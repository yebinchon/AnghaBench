; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_setup_chips.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_setup_chips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.htcpld_data = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.device*, i64, i32, i32 }
%struct.htcpld_core_platform_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@htcpld_chip_set_ni = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Registered chip at 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @htcpld_setup_chips to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htcpld_setup_chips(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.htcpld_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.htcpld_core_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.htcpld_core_platform_data* @dev_get_platdata(%struct.device* %11)
  store %struct.htcpld_core_platform_data* %12, %struct.htcpld_core_platform_data** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call %struct.htcpld_data* @platform_get_drvdata(%struct.platform_device* %13)
  store %struct.htcpld_data* %14, %struct.htcpld_data** %4, align 8
  %15 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %6, align 8
  %16 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %19 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %22 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.TYPE_4__* @devm_kcalloc(%struct.device* %20, i32 %23, i32 4, i32 %24)
  %26 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %27 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %26, i32 0, i32 2
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %27, align 8
  %28 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %29 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %178

35:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %174, %35
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %39 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %177

42:                                               ; preds = %36
  %43 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %6, align 8
  %44 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %52 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 7
  store i32 %50, i32* %57, align 4
  %58 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %6, align 8
  %59 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %67 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 6
  store i32 %65, i32* %72, align 8
  %73 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %74 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 5
  store i64 0, i64* %79, align 8
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %82 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  store %struct.device* %80, %struct.device** %87, align 8
  %88 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %6, align 8
  %89 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %97 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  store i32 %95, i32* %102, align 4
  %103 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %6, align 8
  %104 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %112 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  store i32 %110, i32* %117, align 8
  %118 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %119 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = call i32 @INIT_WORK(i32* %124, i32* @htcpld_chip_set_ni)
  %126 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %127 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %126, i32 0, i32 2
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = call i32 @spin_lock_init(i32* %132)
  %134 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %135 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %42
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @htcpld_setup_chip_irq(%struct.platform_device* %139, i32 %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %174

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %145, %42
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @htcpld_register_chip_i2c(%struct.platform_device* %147, i32 %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %174

153:                                              ; preds = %146
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @htcpld_register_chip_gpio(%struct.platform_device* %154, i32 %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @htcpld_unregister_chip_i2c(%struct.platform_device* %160, i32 %161)
  br label %174

163:                                              ; preds = %153
  %164 = load %struct.device*, %struct.device** %5, align 8
  %165 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %6, align 8
  %166 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %165, i32 0, i32 1
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @dev_info(%struct.device* %164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %163, %159, %152, %144
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %36

177:                                              ; preds = %36
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %177, %32
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local %struct.htcpld_core_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.htcpld_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.TYPE_4__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @htcpld_setup_chip_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @htcpld_register_chip_i2c(%struct.platform_device*, i32) #1

declare dso_local i32 @htcpld_register_chip_gpio(%struct.platform_device*, i32) #1

declare dso_local i32 @htcpld_unregister_chip_i2c(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
