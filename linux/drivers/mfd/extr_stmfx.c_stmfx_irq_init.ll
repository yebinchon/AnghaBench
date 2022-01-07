; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmfx.c_stmfx_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmfx.c_stmfx_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.stmfx = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@STMFX_REG_IRQ_SRC_MAX = common dso_local global i32 0, align 4
@stmfx_irq_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to create IRQ domain\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"drive-open-drain\00", align 1
@STMFX_REG_IRQ_OUT_PIN_TYPE = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@STMFX_REG_IRQ_OUT_PIN_POL = common dso_local global i32 0, align 4
@STMFX_REG_IRQ_OUT_PIN = common dso_local global i32 0, align 4
@stmfx_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"stmfx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @stmfx_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmfx_irq_init(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.stmfx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.stmfx* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.stmfx* %9, %struct.stmfx** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %11 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @STMFX_REG_IRQ_SRC_MAX, align 4
  %16 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %17 = call i32 @irq_domain_add_simple(i32 %14, i32 %15, i32 0, i32* @stmfx_irq_ops, %struct.stmfx* %16)
  %18 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %19 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %21 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %1
  %25 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %26 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i32 @dev_err(%struct.TYPE_3__* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %92

31:                                               ; preds = %1
  %32 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %33 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @of_property_read_bool(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @STMFX_REG_IRQ_OUT_PIN_TYPE, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %31
  %44 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @irq_get_trigger_type(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52, %43
  %58 = load i32, i32* @STMFX_REG_IRQ_OUT_PIN_POL, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %63 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @STMFX_REG_IRQ_OUT_PIN, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @regmap_write(i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %92

72:                                               ; preds = %61
  %73 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %74 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @stmfx_irq_handler, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @IRQF_ONESHOT, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %84 = call i32 @devm_request_threaded_irq(%struct.TYPE_3__* %75, i32 %78, i32* null, i32 %79, i32 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.stmfx* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %72
  %88 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %89 = call i32 @stmfx_irq_exit(%struct.i2c_client* %88)
  br label %90

90:                                               ; preds = %87, %72
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %70, %24
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.stmfx* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @irq_domain_add_simple(i32, i32, i32, i32*, %struct.stmfx*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_3__*, i32, i32*, i32, i32, i8*, %struct.stmfx*) #1

declare dso_local i32 @stmfx_irq_exit(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
