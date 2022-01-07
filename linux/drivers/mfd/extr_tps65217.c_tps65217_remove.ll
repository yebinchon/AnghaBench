; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65217.c_tps65217_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65217.c_tps65217_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tps65217 = type { i32* }

@TPS65217_NUM_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tps65217_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65217_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.tps65217*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call %struct.tps65217* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.tps65217* %7, %struct.tps65217** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @TPS65217_NUM_IRQ, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load %struct.tps65217*, %struct.tps65217** %3, align 8
  %14 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @irq_find_mapping(i32* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @irq_dispose_mapping(i32 %21)
  br label %23

23:                                               ; preds = %20, %12
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.tps65217*, %struct.tps65217** %3, align 8
  %29 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @irq_domain_remove(i32* %30)
  %32 = load %struct.tps65217*, %struct.tps65217** %3, align 8
  %33 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  ret i32 0
}

declare dso_local %struct.tps65217* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @irq_find_mapping(i32*, i32) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @irq_domain_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
