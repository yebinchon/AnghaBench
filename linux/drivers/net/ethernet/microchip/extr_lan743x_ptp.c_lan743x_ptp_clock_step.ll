; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_clock_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_clock_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { %struct.lan743x_ptp }
%struct.lan743x_ptp = type { i32 }

@PTP_CLOCK_STEP_ADJ = common dso_local global i32 0, align 4
@PTP_CLOCK_STEP_ADJ_DIR_ = common dso_local global i32 0, align 4
@PTP_CMD_CTL = common dso_local global i32 0, align 4
@PTP_CMD_CTL_PTP_CLOCK_STEP_SEC_ = common dso_local global i32 0, align 4
@PTP_CLOCK_STEP_ADJ_VALUE_MASK_ = common dso_local global i32 0, align 4
@PTP_CMD_CTL_PTP_CLK_STP_NSEC_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_adapter*, i64)* @lan743x_ptp_clock_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_ptp_clock_step(%struct.lan743x_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.lan743x_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lan743x_ptp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %14, i32 0, i32 0
  store %struct.lan743x_ptp* %15, %struct.lan743x_ptp** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i64, i64* %4, align 8
  %17 = icmp sgt i64 %16, 15000000000
  br i1 %17, label %18, label %40

18:                                               ; preds = %2
  %19 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %20 = call i32 @lan743x_ptp_clock_get(%struct.lan743x_adapter* %19, i32* %8, i32* %9, i32* null)
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @div_u64_rem(i64 %21, i32 1000000000, i32* %10)
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sge i32 %28, 1000000000
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 1000000000
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %30, %18
  %36 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @lan743x_ptp_clock_set(%struct.lan743x_adapter* %36, i32 %37, i32 %38, i32 0)
  br label %182

40:                                               ; preds = %2
  %41 = load i64, i64* %4, align 8
  %42 = icmp slt i64 %41, -15000000000
  br i1 %42, label %43, label %69

43:                                               ; preds = %40
  %44 = load i64, i64* %4, align 8
  %45 = sub nsw i64 0, %44
  store i64 %45, i64* %4, align 8
  %46 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %47 = call i32 @lan743x_ptp_clock_get(%struct.lan743x_adapter* %46, i32* %8, i32* %9, i32* null)
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @div_u64_rem(i64 %48, i32 1000000000, i32* %10)
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %43
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1000000000
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %56, %43
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @lan743x_ptp_clock_set(%struct.lan743x_adapter* %65, i32 %66, i32 %67, i32 0)
  br label %182

69:                                               ; preds = %40
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %4, align 8
  %72 = icmp sge i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i64, i64* %4, align 8
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @div_u64_rem(i64 %75, i32 1000000000, i32* %10)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %9, align 4
  br label %93

78:                                               ; preds = %70
  %79 = load i64, i64* %4, align 8
  %80 = sub nsw i64 0, %79
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @div_u64_rem(i64 %81, i32 1000000000, i32* %10)
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 1000000000, %90
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %87, %78
  br label %93

93:                                               ; preds = %92, %73
  %94 = load i32, i32* %9, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 8
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* %9, align 4
  %101 = icmp sge i32 %100, 1000000000
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %9, align 4
  %106 = sub nsw i32 %105, 1000000000
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %102, %99
  br label %108

108:                                              ; preds = %146, %107
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %157

111:                                              ; preds = %108
  %112 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %5, align 8
  %113 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %112, i32 0, i32 0
  %114 = call i32 @mutex_lock(i32* %113)
  %115 = load i32, i32* %11, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %111
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp sgt i32 %119, 15
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 15, i32* %12, align 4
  br label %122

122:                                              ; preds = %121, %117
  %123 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %124 = load i32, i32* @PTP_CLOCK_STEP_ADJ, align 4
  %125 = load i32, i32* @PTP_CLOCK_STEP_ADJ_DIR_, align 4
  %126 = load i32, i32* %12, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %123, i32 %124, i32 %127)
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %11, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %11, align 4
  br label %146

132:                                              ; preds = %111
  %133 = load i32, i32* %11, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp sgt i32 %135, 15
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  store i32 15, i32* %13, align 4
  br label %138

138:                                              ; preds = %137, %132
  %139 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %140 = load i32, i32* @PTP_CLOCK_STEP_ADJ, align 4
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %139, i32 %140, i32 %141)
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %138, %122
  %147 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %148 = load i32, i32* @PTP_CMD_CTL, align 4
  %149 = load i32, i32* @PTP_CMD_CTL_PTP_CLOCK_STEP_SEC_, align 4
  %150 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %147, i32 %148, i32 %149)
  %151 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %152 = load i32, i32* @PTP_CMD_CTL_PTP_CLOCK_STEP_SEC_, align 4
  %153 = call i32 @lan743x_ptp_wait_till_cmd_done(%struct.lan743x_adapter* %151, i32 %152)
  %154 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %5, align 8
  %155 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %154, i32 0, i32 0
  %156 = call i32 @mutex_unlock(i32* %155)
  br label %108

157:                                              ; preds = %108
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %157
  %161 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %5, align 8
  %162 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %161, i32 0, i32 0
  %163 = call i32 @mutex_lock(i32* %162)
  %164 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %165 = load i32, i32* @PTP_CLOCK_STEP_ADJ, align 4
  %166 = load i32, i32* @PTP_CLOCK_STEP_ADJ_DIR_, align 4
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @PTP_CLOCK_STEP_ADJ_VALUE_MASK_, align 4
  %169 = and i32 %167, %168
  %170 = or i32 %166, %169
  %171 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %164, i32 %165, i32 %170)
  %172 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %173 = load i32, i32* @PTP_CMD_CTL, align 4
  %174 = load i32, i32* @PTP_CMD_CTL_PTP_CLK_STP_NSEC_, align 4
  %175 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %172, i32 %173, i32 %174)
  %176 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %177 = load i32, i32* @PTP_CMD_CTL_PTP_CLK_STP_NSEC_, align 4
  %178 = call i32 @lan743x_ptp_wait_till_cmd_done(%struct.lan743x_adapter* %176, i32 %177)
  %179 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %5, align 8
  %180 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %179, i32 0, i32 0
  %181 = call i32 @mutex_unlock(i32* %180)
  br label %182

182:                                              ; preds = %35, %61, %160, %157
  ret void
}

declare dso_local i32 @lan743x_ptp_clock_get(%struct.lan743x_adapter*, i32*, i32*, i32*) #1

declare dso_local i32 @div_u64_rem(i64, i32, i32*) #1

declare dso_local i32 @lan743x_ptp_clock_set(%struct.lan743x_adapter*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @lan743x_ptp_wait_till_cmd_done(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
