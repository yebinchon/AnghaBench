; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_complete_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_complete_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"complete internal scan\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_private*)* @mwifiex_complete_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_complete_scan(%struct.mwifiex_private* %0) #0 {
  %2 = alloca %struct.mwifiex_private*, align 8
  %3 = alloca %struct.mwifiex_adapter*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %2, align 8
  %4 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %5 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %4, i32 0, i32 1
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  store %struct.mwifiex_adapter* %6, %struct.mwifiex_adapter** %3, align 8
  %7 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %20 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %15
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %25 = load i32, i32* @INFO, align 4
  %26 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %24, i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = call i32 @mwifiex_complete_cmd(%struct.mwifiex_adapter* %27, %struct.TYPE_4__* %30)
  br label %32

32:                                               ; preds = %23, %15
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @mwifiex_complete_cmd(%struct.mwifiex_adapter*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
