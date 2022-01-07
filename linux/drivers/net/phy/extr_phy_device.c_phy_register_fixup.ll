; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_register_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_register_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type opaque
%struct.phy_fixup = type { i32 (%struct.phy_device.0*)*, i32, i8*, i8*, i32 }
%struct.phy_device.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@phy_fixup_lock = common dso_local global i32 0, align 4
@phy_fixup_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_register_fixup(i8* %0, i8* %1, i8* %2, i32 (%struct.phy_device*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (%struct.phy_device*)*, align 8
  %10 = alloca %struct.phy_fixup*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 (%struct.phy_device*)* %3, i32 (%struct.phy_device*)** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.phy_fixup* @kzalloc(i32 40, i32 %11)
  store %struct.phy_fixup* %12, %struct.phy_fixup** %10, align 8
  %13 = load %struct.phy_fixup*, %struct.phy_fixup** %10, align 8
  %14 = icmp ne %struct.phy_fixup* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %39

18:                                               ; preds = %4
  %19 = load %struct.phy_fixup*, %struct.phy_fixup** %10, align 8
  %20 = getelementptr inbounds %struct.phy_fixup, %struct.phy_fixup* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlcpy(i32 %21, i8* %22, i32 4)
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.phy_fixup*, %struct.phy_fixup** %10, align 8
  %26 = getelementptr inbounds %struct.phy_fixup, %struct.phy_fixup* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.phy_fixup*, %struct.phy_fixup** %10, align 8
  %29 = getelementptr inbounds %struct.phy_fixup, %struct.phy_fixup* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)** %9, align 8
  %31 = bitcast i32 (%struct.phy_device*)* %30 to i32 (%struct.phy_device.0*)*
  %32 = load %struct.phy_fixup*, %struct.phy_fixup** %10, align 8
  %33 = getelementptr inbounds %struct.phy_fixup, %struct.phy_fixup* %32, i32 0, i32 0
  store i32 (%struct.phy_device.0*)* %31, i32 (%struct.phy_device.0*)** %33, align 8
  %34 = call i32 @mutex_lock(i32* @phy_fixup_lock)
  %35 = load %struct.phy_fixup*, %struct.phy_fixup** %10, align 8
  %36 = getelementptr inbounds %struct.phy_fixup, %struct.phy_fixup* %35, i32 0, i32 1
  %37 = call i32 @list_add_tail(i32* %36, i32* @phy_fixup_list)
  %38 = call i32 @mutex_unlock(i32* @phy_fixup_lock)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %18, %15
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.phy_fixup* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
