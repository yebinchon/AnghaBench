; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_device_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_device_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_chip = type { i64, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.i2c_client*, %struct.i2c_client* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_client = type { i32, %struct.TYPE_2__ }
%struct.pm860x_platform_data = type { i32, i64 }

@CHIP_PM8607 = common dso_local global i64 0, align 8
@INT_STATUS_NUM = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i64 0, align 8
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PM8607_B0_MISC1_INV_INT = common dso_local global i32 0, align 4
@PM8607_B0_MISC1_INT_CLEAR = common dso_local global i32 0, align 4
@PM8607_B0_MISC1_INT_MASK = common dso_local global i32 0, align 4
@PM8607_B0_MISC1 = common dso_local global i32 0, align 4
@PM8607_INT_MASK_1 = common dso_local global i32 0, align 4
@PM8607_INT_STATUS1 = common dso_local global i32 0, align 4
@pm860x_irqs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate interrupts, ret:%d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@pm860x_irq_domain_ops = common dso_local global i32 0, align 4
@pm860x_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"88pm860x\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm860x_chip*, %struct.pm860x_platform_data*)* @device_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_irq_init(%struct.pm860x_chip* %0, %struct.pm860x_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm860x_chip*, align 8
  %5 = alloca %struct.pm860x_platform_data*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.device_node*, align 8
  %16 = alloca i32, align 4
  store %struct.pm860x_chip* %0, %struct.pm860x_chip** %4, align 8
  store %struct.pm860x_platform_data* %1, %struct.pm860x_platform_data** %5, align 8
  %17 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %18 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CHIP_PM8607, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %24 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %23, i32 0, i32 7
  %25 = load %struct.i2c_client*, %struct.i2c_client** %24, align 8
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %28 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %27, i32 0, i32 6
  %29 = load %struct.i2c_client*, %struct.i2c_client** %28, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi %struct.i2c_client* [ %25, %22 ], [ %29, %26 ]
  store %struct.i2c_client* %31, %struct.i2c_client** %6, align 8
  %32 = load i32, i32* @INT_STATUS_NUM, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %7, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %8, align 8
  %36 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  %37 = load i64, i64* @IRQF_ONESHOT, align 8
  %38 = or i64 %36, %37
  store i64 %38, i64* %9, align 8
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  store i32 -1, i32* %14, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.device_node*, %struct.device_node** %43, align 8
  store %struct.device_node* %44, %struct.device_node** %15, align 8
  %45 = load i32, i32* @PM8607_B0_MISC1_INV_INT, align 4
  %46 = load i32, i32* @PM8607_B0_MISC1_INT_CLEAR, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @PM8607_B0_MISC1_INT_MASK, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %50 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %51 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %50, i32 0, i32 1
  store i32 0, i32* %51, align 8
  %52 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %5, align 8
  %53 = icmp ne %struct.pm860x_platform_data* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %30
  %55 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %5, align 8
  %56 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @PM8607_B0_MISC1_INT_CLEAR, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %64 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %63, i32 0, i32 1
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %59, %54, %30
  %66 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %67 = load i32, i32* @PM8607_B0_MISC1, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @pm860x_set_bits(%struct.i2c_client* %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %180

74:                                               ; preds = %65
  %75 = load i32, i32* @INT_STATUS_NUM, align 4
  %76 = call i32 @memset(i8* %35, i32 0, i32 %75)
  %77 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %78 = load i32, i32* @PM8607_INT_MASK_1, align 4
  %79 = load i32, i32* @INT_STATUS_NUM, align 4
  %80 = call i32 @pm860x_bulk_write(%struct.i2c_client* %77, i32 %78, i32 %79, i8* %35)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %180

84:                                               ; preds = %74
  %85 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %86 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32, i32* @INT_STATUS_NUM, align 4
  %91 = call i32 @memset(i8* %35, i32 255, i32 %90)
  %92 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %93 = load i32, i32* @PM8607_INT_STATUS1, align 4
  %94 = load i32, i32* @INT_STATUS_NUM, align 4
  %95 = call i32 @pm860x_bulk_write(%struct.i2c_client* %92, i32 %93, i32 %94, i8* %35)
  store i32 %95, i32* %12, align 4
  br label %101

96:                                               ; preds = %84
  %97 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %98 = load i32, i32* @PM8607_INT_STATUS1, align 4
  %99 = load i32, i32* @INT_STATUS_NUM, align 4
  %100 = call i32 @pm860x_bulk_read(%struct.i2c_client* %97, i32 %98, i32 %99, i8* %35)
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %96, %89
  %102 = load i32, i32* %12, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %180

105:                                              ; preds = %101
  %106 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %107 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %106, i32 0, i32 5
  %108 = call i32 @mutex_init(i32* %107)
  %109 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %5, align 8
  %110 = icmp ne %struct.pm860x_platform_data* %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %5, align 8
  %113 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %5, align 8
  %118 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %116, %111, %105
  %121 = load i32, i32* @pm860x_irqs, align 4
  %122 = call i32 @ARRAY_SIZE(i32 %121)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @irq_alloc_descs(i32 %123, i32 0, i32 %124, i32 0)
  %126 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %127 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %129 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %120
  %133 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %134 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %133, i32 0, i32 1
  %135 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %136 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @dev_err(%struct.TYPE_2__* %134, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @EBUSY, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %12, align 4
  br label %180

141:                                              ; preds = %120
  %142 = load %struct.device_node*, %struct.device_node** %15, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %145 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %148 = call i32 @irq_domain_add_legacy(%struct.device_node* %142, i32 %143, i32 %146, i32 0, i32* @pm860x_irq_domain_ops, %struct.pm860x_chip* %147)
  %149 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %153 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 8
  %154 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %155 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %141
  br label %180

159:                                              ; preds = %141
  %160 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %161 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @pm860x_irq, align 4
  %164 = load i64, i64* %9, align 8
  %165 = load i64, i64* @IRQF_ONESHOT, align 8
  %166 = or i64 %164, %165
  %167 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %168 = call i32 @request_threaded_irq(i32 %162, i32* null, i32 %163, i64 %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.pm860x_chip* %167)
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %159
  %172 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %173 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %172, i32 0, i32 4
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @dev_err(%struct.TYPE_2__* %174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %175)
  %177 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %178 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %177, i32 0, i32 3
  store i32 0, i32* %178, align 8
  br label %179

179:                                              ; preds = %171, %159
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %184

180:                                              ; preds = %158, %132, %104, %83, %73
  %181 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %182 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %181, i32 0, i32 3
  store i32 0, i32* %182, align 8
  %183 = load i32, i32* %12, align 4
  store i32 %183, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %184

184:                                              ; preds = %180, %179
  %185 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %185)
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pm860x_set_bits(%struct.i2c_client*, i32, i32, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @pm860x_bulk_write(%struct.i2c_client*, i32, i32, i8*) #2

declare dso_local i32 @pm860x_bulk_read(%struct.i2c_client*, i32, i32, i8*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @irq_alloc_descs(i32, i32, i32, i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i32) #2

declare dso_local i32 @irq_domain_add_legacy(%struct.device_node*, i32, i32, i32, i32*, %struct.pm860x_chip*) #2

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i64, i8*, %struct.pm860x_chip*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
