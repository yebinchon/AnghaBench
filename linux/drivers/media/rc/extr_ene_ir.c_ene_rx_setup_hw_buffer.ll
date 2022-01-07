; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_rx_setup_hw_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_rx_setup_hw_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ene_device = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ENE_FW_PACKET_SIZE = common dso_local global i32 0, align 4
@ENE_FW_SAMPLE_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Hardware uses 2 extended buffers:\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"  0x%04x - len : %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Total buffer len = %d\0A\00", align 1
@ENE_FW1 = common dso_local global i32 0, align 4
@ENE_FW1_EXTRA_BUF_HND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"Error validating extra buffers, device probably won't work\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ene_device*)* @ene_rx_setup_hw_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ene_rx_setup_hw_buffer(%struct.ene_device* %0) #0 {
  %2 = alloca %struct.ene_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ene_device* %0, %struct.ene_device** %2, align 8
  %4 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %5 = call i32 @ene_rx_read_hw_pointer(%struct.ene_device* %4)
  %6 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %7 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %10 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %12 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENE_FW_PACKET_SIZE, align 4
  %17 = mul nsw i32 %16, 2
  %18 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %19 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  br label %143

20:                                               ; preds = %1
  %21 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %22 = load i64, i64* @ENE_FW_SAMPLE_BUFFER, align 8
  %23 = call i32 @ene_read_reg(%struct.ene_device* %21, i64 %22)
  store i32 %23, i32* %3, align 4
  %24 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %25 = load i64, i64* @ENE_FW_SAMPLE_BUFFER, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i32 @ene_read_reg(%struct.ene_device* %24, i64 %26)
  %28 = shl i32 %27, 8
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %33 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %35 = load i64, i64* @ENE_FW_SAMPLE_BUFFER, align 8
  %36 = add nsw i64 %35, 2
  %37 = call i32 @ene_read_reg(%struct.ene_device* %34, i64 %36)
  %38 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %39 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %41 = load i64, i64* @ENE_FW_SAMPLE_BUFFER, align 8
  %42 = add nsw i64 %41, 3
  %43 = call i32 @ene_read_reg(%struct.ene_device* %40, i64 %42)
  store i32 %43, i32* %3, align 4
  %44 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %45 = load i64, i64* @ENE_FW_SAMPLE_BUFFER, align 8
  %46 = add nsw i64 %45, 4
  %47 = call i32 @ene_read_reg(%struct.ene_device* %44, i64 %46)
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %53 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %55 = load i64, i64* @ENE_FW_SAMPLE_BUFFER, align 8
  %56 = add nsw i64 %55, 5
  %57 = call i32 @ene_read_reg(%struct.ene_device* %54, i64 %56)
  %58 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %59 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %61 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %64 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = add nsw i32 %66, 8
  %68 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %69 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %72 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %75 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %76)
  %78 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %79 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %82 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %83)
  %85 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %86 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %90 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %91, 64
  br i1 %92, label %98, label %93

93:                                               ; preds = %20
  %94 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %95 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %96, 16
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %20
  br label %135

99:                                               ; preds = %93
  %100 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %101 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %102, 64508
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %106 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %107, 60416
  br i1 %108, label %109, label %110

109:                                              ; preds = %104, %99
  br label %135

110:                                              ; preds = %104
  %111 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %112 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %113, 64508
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %117 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %118, 60416
  br i1 %119, label %120, label %121

120:                                              ; preds = %115, %110
  br label %135

121:                                              ; preds = %115
  %122 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %123 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %126 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp sgt i32 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %135

130:                                              ; preds = %121
  %131 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %132 = load i32, i32* @ENE_FW1, align 4
  %133 = load i32, i32* @ENE_FW1_EXTRA_BUF_HND, align 4
  %134 = call i32 @ene_set_reg_mask(%struct.ene_device* %131, i32 %132, i32 %133)
  br label %143

135:                                              ; preds = %129, %120, %109, %98
  %136 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %137 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %138 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %137, i32 0, i32 2
  store i32 0, i32* %138, align 4
  %139 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %140 = load i32, i32* @ENE_FW1, align 4
  %141 = load i32, i32* @ENE_FW1_EXTRA_BUF_HND, align 4
  %142 = call i32 @ene_clear_reg_mask(%struct.ene_device* %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %135, %130, %15
  ret void
}

declare dso_local i32 @ene_rx_read_hw_pointer(%struct.ene_device*) #1

declare dso_local i32 @ene_read_reg(%struct.ene_device*, i64) #1

declare dso_local i32 @pr_notice(i8*, ...) #1

declare dso_local i32 @ene_set_reg_mask(%struct.ene_device*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @ene_clear_reg_mask(%struct.ene_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
