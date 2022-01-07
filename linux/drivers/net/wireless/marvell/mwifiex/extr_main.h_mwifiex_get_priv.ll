; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.h_mwifiex_get_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.h_mwifiex_get_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_adapter = type { i32, %struct.mwifiex_private** }

@MWIFIEX_BSS_ROLE_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mwifiex_private* (%struct.mwifiex_adapter*, i32)* @mwifiex_get_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %39, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %6
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %13, i32 0, i32 1
  %15 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %15, i64 %17
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %18, align 8
  %20 = icmp ne %struct.mwifiex_private* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %26, i32 0, i32 1
  %28 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %28, i64 %30
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %31, align 8
  %33 = call i32 @GET_BSS_ROLE(%struct.mwifiex_private* %32)
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25, %21
  br label %42

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %12
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %6

42:                                               ; preds = %36, %6
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %49, i32 0, i32 1
  %51 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %51, i64 %53
  %55 = load %struct.mwifiex_private*, %struct.mwifiex_private** %54, align 8
  br label %57

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %48
  %58 = phi %struct.mwifiex_private* [ %55, %48 ], [ null, %56 ]
  ret %struct.mwifiex_private* %58
}

declare dso_local i32 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
