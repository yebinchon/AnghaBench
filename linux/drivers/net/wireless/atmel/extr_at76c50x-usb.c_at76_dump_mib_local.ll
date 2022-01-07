; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_dump_mib_local.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_dump_mib_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at76_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mib_local = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MIB_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"at76_get_mib (LOCAL) failed: %d\0A\00", align 1
@DBG_MIB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [105 x i8] c"%s: MIB LOCAL: beacon_enable %d txautorate_fallback %d ssid_size %d promiscuous_mode %d preamble_type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at76_priv*)* @at76_dump_mib_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at76_dump_mib_local(%struct.at76_priv* %0) #0 {
  %2 = alloca %struct.at76_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mib_local*, align 8
  store %struct.at76_priv* %0, %struct.at76_priv** %2, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mib_local* @kmalloc(i32 20, i32 %5)
  store %struct.mib_local* %6, %struct.mib_local** %4, align 8
  %7 = load %struct.mib_local*, %struct.mib_local** %4, align 8
  %8 = icmp ne %struct.mib_local* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %54

10:                                               ; preds = %1
  %11 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %12 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MIB_LOCAL, align 4
  %15 = load %struct.mib_local*, %struct.mib_local** %4, align 8
  %16 = call i32 @at76_get_mib(i32 %13, i32 %14, %struct.mib_local* %15, i32 20)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %10
  %20 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %21 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @wiphy_err(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %51

27:                                               ; preds = %10
  %28 = load i32, i32* @DBG_MIB, align 4
  %29 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %30 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wiphy_name(i32 %33)
  %35 = load %struct.mib_local*, %struct.mib_local** %4, align 8
  %36 = getelementptr inbounds %struct.mib_local, %struct.mib_local* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mib_local*, %struct.mib_local** %4, align 8
  %39 = getelementptr inbounds %struct.mib_local, %struct.mib_local* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mib_local*, %struct.mib_local** %4, align 8
  %42 = getelementptr inbounds %struct.mib_local, %struct.mib_local* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mib_local*, %struct.mib_local** %4, align 8
  %45 = getelementptr inbounds %struct.mib_local, %struct.mib_local* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mib_local*, %struct.mib_local** %4, align 8
  %48 = getelementptr inbounds %struct.mib_local, %struct.mib_local* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @at76_dbg(i32 %28, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %27, %19
  %52 = load %struct.mib_local*, %struct.mib_local** %4, align 8
  %53 = call i32 @kfree(%struct.mib_local* %52)
  br label %54

54:                                               ; preds = %51, %9
  ret void
}

declare dso_local %struct.mib_local* @kmalloc(i32, i32) #1

declare dso_local i32 @at76_get_mib(i32, i32, %struct.mib_local*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @at76_dbg(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i32 @kfree(%struct.mib_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
