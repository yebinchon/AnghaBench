; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_switch_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_switch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_chip_data = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.ksz_device = type { i64, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i32* }

@ksz9477_switch_ops = common dso_local global i32 0, align 4
@ksz9477_switch_chips = common dso_local global %struct.ksz_chip_data* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@SWITCH_COUNTER_NUM = common dso_local global i32 0, align 4
@TOTAL_SWITCH_COUNTER_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_device*)* @ksz9477_switch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9477_switch_init(%struct.ksz_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ksz_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksz_chip_data*, align 8
  store %struct.ksz_device* %0, %struct.ksz_device** %3, align 8
  %6 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %7 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %6, i32 0, i32 14
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32* @ksz9477_switch_ops, i32** %9, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %64, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** @ksz9477_switch_chips, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.ksz_chip_data* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %67

15:                                               ; preds = %10
  %16 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** @ksz9477_switch_chips, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ksz_chip_data, %struct.ksz_chip_data* %16, i64 %18
  store %struct.ksz_chip_data* %19, %struct.ksz_chip_data** %5, align 8
  %20 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %21 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** %5, align 8
  %24 = getelementptr inbounds %struct.ksz_chip_data, %struct.ksz_chip_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %15
  %28 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** %5, align 8
  %29 = getelementptr inbounds %struct.ksz_chip_data, %struct.ksz_chip_data* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %32 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %31, i32 0, i32 13
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** %5, align 8
  %34 = getelementptr inbounds %struct.ksz_chip_data, %struct.ksz_chip_data* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %37 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %36, i32 0, i32 12
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** %5, align 8
  %39 = getelementptr inbounds %struct.ksz_chip_data, %struct.ksz_chip_data* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %42 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %41, i32 0, i32 11
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** %5, align 8
  %44 = getelementptr inbounds %struct.ksz_chip_data, %struct.ksz_chip_data* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %47 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** %5, align 8
  %49 = getelementptr inbounds %struct.ksz_chip_data, %struct.ksz_chip_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %52 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** %5, align 8
  %54 = getelementptr inbounds %struct.ksz_chip_data, %struct.ksz_chip_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %57 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %56, i32 0, i32 9
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** %5, align 8
  %59 = getelementptr inbounds %struct.ksz_chip_data, %struct.ksz_chip_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %62 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 8
  br label %67

63:                                               ; preds = %15
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %10

67:                                               ; preds = %27, %10
  %68 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %69 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %164

75:                                               ; preds = %67
  %76 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %77 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = shl i32 1, %78
  %80 = sub nsw i32 %79, 1
  %81 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %82 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @SWITCH_COUNTER_NUM, align 4
  %84 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %85 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @TOTAL_SWITCH_COUNTER_NUM, align 4
  %87 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %88 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %90 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %4, align 4
  %92 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %93 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 4, %96
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i8* @devm_kzalloc(i32 %94, i32 %98, i32 %99)
  %101 = bitcast i8* %100 to %struct.TYPE_6__*
  %102 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %103 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %102, i32 0, i32 5
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %103, align 8
  %104 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %105 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %104, i32 0, i32 5
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = icmp ne %struct.TYPE_6__* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %75
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %164

111:                                              ; preds = %75
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %160, %111
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %115 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %163

118:                                              ; preds = %112
  %119 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %120 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %119, i32 0, i32 5
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = call i32 @mutex_init(i32* %126)
  %128 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %129 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @TOTAL_SWITCH_COUNTER_NUM, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = mul i64 4, %133
  %135 = trunc i64 %134 to i32
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call i8* @devm_kzalloc(i32 %130, i32 %135, i32 %136)
  %138 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %139 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %138, i32 0, i32 5
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  store i8* %137, i8** %145, align 8
  %146 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %147 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %146, i32 0, i32 5
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %118
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %164

159:                                              ; preds = %118
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %4, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %4, align 4
  br label %112

163:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %163, %156, %108, %72
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @ARRAY_SIZE(%struct.ksz_chip_data*) #1

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
