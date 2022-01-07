; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_func_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_func_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }

@BE_CLEAR_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_func_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_func_init(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %5 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %6 = call i32 @be_fw_wait_ready(%struct.be_adapter* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %13 = load i32, i32* @BE_CLEAR_ALL, align 4
  %14 = call i32 @be_clear_error(%struct.be_adapter* %12, i32 %13)
  %15 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %16 = call i64 @be_reset_required(%struct.be_adapter* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %20 = call i32 @be_cmd_reset_function(%struct.be_adapter* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %37

25:                                               ; preds = %18
  %26 = call i32 @msleep(i32 100)
  br label %27

27:                                               ; preds = %25, %11
  %28 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %29 = call i32 @be_cmd_fw_init(%struct.be_adapter* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %36 = call i32 @be_intr_set(%struct.be_adapter* %35, i32 1)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %32, %23, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @be_fw_wait_ready(%struct.be_adapter*) #1

declare dso_local i32 @be_clear_error(%struct.be_adapter*, i32) #1

declare dso_local i64 @be_reset_required(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_reset_function(%struct.be_adapter*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @be_cmd_fw_init(%struct.be_adapter*) #1

declare dso_local i32 @be_intr_set(%struct.be_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
