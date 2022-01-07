; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_switch_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_switch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_chip_data = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ksz_device = type { i64, i32, i32, %struct.TYPE_6__*, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i32* }

@ksz8795_switch_ops = common dso_local global i32 0, align 4
@ksz8795_switch_chips = common dso_local global %struct.ksz_chip_data* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@SWITCH_COUNTER_NUM = common dso_local global i32 0, align 4
@TOTAL_SWITCH_COUNTER_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_device*)* @ksz8795_switch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz8795_switch_init(%struct.ksz_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ksz_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksz_chip_data*, align 8
  store %struct.ksz_device* %0, %struct.ksz_device** %3, align 8
  %6 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %7 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %6, i32 0, i32 14
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32* @ksz8795_switch_ops, i32** %9, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %59, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** @ksz8795_switch_chips, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.ksz_chip_data* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %10
  %16 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** @ksz8795_switch_chips, align 8
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
  br i1 %26, label %27, label %58

27:                                               ; preds = %15
  %28 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** %5, align 8
  %29 = getelementptr inbounds %struct.ksz_chip_data, %struct.ksz_chip_data* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %32 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %31, i32 0, i32 13
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** %5, align 8
  %34 = getelementptr inbounds %struct.ksz_chip_data, %struct.ksz_chip_data* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %37 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %36, i32 0, i32 12
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** %5, align 8
  %39 = getelementptr inbounds %struct.ksz_chip_data, %struct.ksz_chip_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %42 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %41, i32 0, i32 11
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** %5, align 8
  %44 = getelementptr inbounds %struct.ksz_chip_data, %struct.ksz_chip_data* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %47 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** %5, align 8
  %49 = getelementptr inbounds %struct.ksz_chip_data, %struct.ksz_chip_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %52 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ksz_chip_data*, %struct.ksz_chip_data** %5, align 8
  %54 = getelementptr inbounds %struct.ksz_chip_data, %struct.ksz_chip_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %57 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %56, i32 0, i32 9
  store i32 %55, i32* %57, align 4
  br label %62

58:                                               ; preds = %15
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %10

62:                                               ; preds = %27, %10
  %63 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %64 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %166

70:                                               ; preds = %62
  %71 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %72 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @BIT(i32 %73)
  %75 = sub nsw i64 %74, 1
  %76 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %77 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %76, i32 0, i32 7
  store i64 %75, i64* %77, align 8
  %78 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %79 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %82 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = or i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load i32, i32* @SWITCH_COUNTER_NUM, align 4
  %86 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %87 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @TOTAL_SWITCH_COUNTER_NUM, align 4
  %89 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %90 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %92 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %4, align 4
  %94 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %95 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 4, %98
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i8* @devm_kzalloc(i32 %96, i32 %100, i32 %101)
  %103 = bitcast i8* %102 to %struct.TYPE_6__*
  %104 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %105 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %104, i32 0, i32 3
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %105, align 8
  %106 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %107 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %106, i32 0, i32 3
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = icmp ne %struct.TYPE_6__* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %70
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %166

113:                                              ; preds = %70
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %162, %113
  %115 = load i32, i32* %4, align 4
  %116 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %117 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %165

120:                                              ; preds = %114
  %121 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %122 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %121, i32 0, i32 3
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = call i32 @mutex_init(i32* %128)
  %130 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %131 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @TOTAL_SWITCH_COUNTER_NUM, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = mul i64 4, %135
  %137 = trunc i64 %136 to i32
  %138 = load i32, i32* @GFP_KERNEL, align 4
  %139 = call i8* @devm_kzalloc(i32 %132, i32 %137, i32 %138)
  %140 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %141 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %140, i32 0, i32 3
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store i8* %139, i8** %147, align 8
  %148 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %149 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %148, i32 0, i32 3
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %120
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %2, align 4
  br label %166

161:                                              ; preds = %120
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %114

165:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %165, %158, %110, %67
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @ARRAY_SIZE(%struct.ksz_chip_data*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
