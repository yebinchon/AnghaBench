; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_init_alive_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_init_alive_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Bad \22initialize\22 uCode load.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Initialization Alive received.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Couldn't set up uCode pointers.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il4965_init_alive_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_init_alive_start(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %3 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %4 = call i64 @il4965_verify_ucode(%struct.il_priv* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @D_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %10 = call i32 @il4965_hw_get_temperature(%struct.il_priv* %9)
  %11 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = call i32 @D_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %15 = call i64 @il4965_set_ucode_ptrs(%struct.il_priv* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = call i32 @D_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %20

19:                                               ; preds = %8
  br label %27

20:                                               ; preds = %17, %6
  %21 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %22 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 0
  %26 = call i32 @queue_work(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %20, %19
  ret void
}

declare dso_local i64 @il4965_verify_ucode(%struct.il_priv*) #1

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i32 @il4965_hw_get_temperature(%struct.il_priv*) #1

declare dso_local i64 @il4965_set_ucode_ptrs(%struct.il_priv*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
