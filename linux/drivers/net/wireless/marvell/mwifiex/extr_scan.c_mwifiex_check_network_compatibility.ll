; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_check_network_compatibility.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_check_network_compatibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32 }
%struct.mwifiex_bssdescriptor = type { i64, i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Incompatible network settings\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_check_network_compatibility(%struct.mwifiex_private* %0, %struct.mwifiex_bssdescriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.mwifiex_bssdescriptor*, align 8
  %6 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.mwifiex_bssdescriptor* %1, %struct.mwifiex_bssdescriptor** %5, align 8
  store i32 -1, i32* %6, align 4
  %7 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %8 = icmp ne %struct.mwifiex_bssdescriptor* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %46

10:                                               ; preds = %2
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %12 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %13 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %17 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @mwifiex_get_cfp(%struct.mwifiex_private* %11, i32 %15, i32 %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %10
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %42 [
    i32 128, label %26
    i32 129, label %26
  ]

26:                                               ; preds = %22, %22
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %28 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %29 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %30 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mwifiex_is_network_compatible(%struct.mwifiex_private* %27, %struct.mwifiex_bssdescriptor* %28, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %37 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ERROR, align 4
  %40 = call i32 @mwifiex_dbg(i32 %38, i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %35, %26
  br label %43

42:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %10
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %9
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @mwifiex_get_cfp(%struct.mwifiex_private*, i32, i32, i32) #1

declare dso_local i32 @mwifiex_is_network_compatible(%struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*, i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
