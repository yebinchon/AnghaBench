; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_kgdbts.c_configure_kgdbts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_kgdbts.c_configure_kgdbts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config = common dso_local global i64* null, align 8
@final_ack = common dso_local global i64 0, align 8
@kgdbts_io_ops = common dso_local global i32 0, align 4
@configured = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @configure_kgdbts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_kgdbts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i64*, i64** @config, align 8
  %4 = call i32 @strlen(i64* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i64*, i64** @config, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @isspace(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6, %0
  br label %23

13:                                               ; preds = %6
  store i64 0, i64* @final_ack, align 8
  %14 = call i32 @run_plant_and_detach_test(i32 1)
  %15 = call i32 @kgdb_register_io_module(i32* @kgdbts_io_ops)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  store i32 0, i32* @configured, align 4
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* %1, align 4
  br label %27

20:                                               ; preds = %13
  store i32 1, i32* @configured, align 4
  %21 = call i32 (...) @kgdbts_run_tests()
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* %1, align 4
  br label %27

23:                                               ; preds = %12
  %24 = load i64*, i64** @config, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 0, i64* %25, align 8
  store i32 0, i32* @configured, align 4
  %26 = load i32, i32* %2, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %23, %20, %18
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @strlen(i64*) #1

declare dso_local i64 @isspace(i64) #1

declare dso_local i32 @run_plant_and_detach_test(i32) #1

declare dso_local i32 @kgdb_register_io_module(i32*) #1

declare dso_local i32 @kgdbts_run_tests(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
