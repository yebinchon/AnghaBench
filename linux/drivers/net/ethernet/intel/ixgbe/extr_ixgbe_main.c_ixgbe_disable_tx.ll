; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_disable_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_disable_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.ixgbe_ring**, %struct.ixgbe_ring**, %struct.ixgbe_hw }
%struct.ixgbe_ring = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@IXGBE_TXDCTL_SWFLSH = common dso_local global i32 0, align 4
@IXGBE_LINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_UP = common dso_local global i32 0, align 4
@IXGBE_MAX_RX_DESC_POLL = common dso_local global i32 0, align 4
@IXGBE_TXDCTL_ENABLE = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"TXDCTL.ENABLE for one or more queues not cleared within the polling period\0A\00", align 1
@IXGBE_DMATXCTL = common dso_local global i32 0, align 4
@IXGBE_DMATXCTL_TE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_disable_tx(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_ring*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ixgbe_ring*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ixgbe_ring*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ixgbe_ring*, align 8
  %16 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 4
  store %struct.ixgbe_hw* %18, %struct.ixgbe_hw** %5, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ixgbe_removed(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %184

25:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %33, i32 0, i32 3
  %35 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %35, i64 %37
  %39 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %38, align 8
  store %struct.ixgbe_ring* %39, %struct.ixgbe_ring** %9, align 8
  %40 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %9, align 8
  %41 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @IXGBE_TXDCTL(i32 %44)
  %46 = load i32, i32* @IXGBE_TXDCTL_SWFLSH, align 4
  %47 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %43, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %32
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %26

51:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %74, %51
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %59, i32 0, i32 2
  %61 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %61, i64 %63
  %65 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %64, align 8
  store %struct.ixgbe_ring* %65, %struct.ixgbe_ring** %11, align 8
  %66 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %67 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %12, align 4
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @IXGBE_TXDCTL(i32 %70)
  %72 = load i32, i32* @IXGBE_TXDCTL_SWFLSH, align 4
  %73 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %69, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %58
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %52

77:                                               ; preds = %52
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %79 = load i32, i32* @IXGBE_LINKS, align 4
  %80 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %78, i32 %79)
  %81 = load i32, i32* @IXGBE_LINKS_UP, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  br label %168

85:                                               ; preds = %77
  %86 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %87 = call i32 @ixgbe_get_completion_timeout(%struct.ixgbe_adapter* %86)
  %88 = sdiv i32 %87, 100
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %4, align 8
  %90 = load i32, i32* @IXGBE_MAX_RX_DESC_POLL, align 4
  store i32 %90, i32* %7, align 4
  %91 = load i64, i64* %4, align 8
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %164, %85
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %7, align 4
  %95 = icmp ne i32 %93, 0
  br i1 %95, label %96, label %165

96:                                               ; preds = %92
  %97 = load i64, i64* %3, align 8
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 10
  %100 = call i32 @usleep_range(i64 %97, i64 %99)
  %101 = load i64, i64* %4, align 8
  %102 = mul i64 %101, 2
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %128, %96
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %108 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %131

111:                                              ; preds = %105
  %112 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %113 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %112, i32 0, i32 3
  %114 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %114, i64 %116
  %118 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %117, align 8
  store %struct.ixgbe_ring* %118, %struct.ixgbe_ring** %13, align 8
  %119 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %13, align 8
  %120 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %14, align 4
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @IXGBE_TXDCTL(i32 %123)
  %125 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %122, i32 %124)
  %126 = load i32, i32* %8, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %111
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %105

131:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %155, %131
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %135 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %158

138:                                              ; preds = %132
  %139 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %140 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %139, i32 0, i32 2
  %141 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %141, i64 %143
  %145 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %144, align 8
  store %struct.ixgbe_ring* %145, %struct.ixgbe_ring** %15, align 8
  %146 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %15, align 8
  %147 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %16, align 4
  %149 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %150 = load i32, i32* %16, align 4
  %151 = call i32 @IXGBE_TXDCTL(i32 %150)
  %152 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %149, i32 %151)
  %153 = load i32, i32* %8, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %138
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %132

158:                                              ; preds = %132
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @IXGBE_TXDCTL_ENABLE, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %158
  br label %168

164:                                              ; preds = %158
  br label %92

165:                                              ; preds = %92
  %166 = load i32, i32* @drv, align 4
  %167 = call i32 @e_err(i32 %166, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %163, %84
  %169 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %170 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  switch i32 %172, label %183 [
    i32 132, label %173
    i32 131, label %173
    i32 130, label %173
    i32 129, label %173
    i32 128, label %173
  ]

173:                                              ; preds = %168, %168, %168, %168, %168
  %174 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %175 = load i32, i32* @IXGBE_DMATXCTL, align 4
  %176 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %177 = load i32, i32* @IXGBE_DMATXCTL, align 4
  %178 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %176, i32 %177)
  %179 = load i32, i32* @IXGBE_DMATXCTL_TE, align 4
  %180 = xor i32 %179, -1
  %181 = and i32 %178, %180
  %182 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %174, i32 %175, i32 %181)
  br label %183

183:                                              ; preds = %168, %173
  br label %184

184:                                              ; preds = %24, %183
  ret void
}

declare dso_local i64 @ixgbe_removed(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_TXDCTL(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_get_completion_timeout(%struct.ixgbe_adapter*) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @e_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
