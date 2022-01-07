; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-sysfs.c_store_val_any.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-sysfs.c_store_val_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_sysfs_ctl_item = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_sysfs_ctl_item*, i32, i8*, i32)* @store_val_any to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_val_any(%struct.pvr2_sysfs_ctl_item* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvr2_sysfs_ctl_item*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pvr2_sysfs_ctl_item* %0, %struct.pvr2_sysfs_ctl_item** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %6, align 8
  %17 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @pvr2_ctrl_custom_sym_to_value(i32 %18, i8* %19, i32 %20, i32* %11, i32* %12)
  store i32 %21, i32* %10, align 4
  br label %29

22:                                               ; preds = %4
  %23 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %6, align 8
  %24 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @pvr2_ctrl_sym_to_value(i32 %25, i8* %26, i32 %27, i32* %11, i32* %12)
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %22, %15
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %49

34:                                               ; preds = %29
  %35 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %6, align 8
  %36 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @pvr2_ctrl_set_mask_value(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %6, align 8
  %42 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pvr2_hdw_commit_ctl(i32 %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %34, %32
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @pvr2_ctrl_custom_sym_to_value(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @pvr2_ctrl_sym_to_value(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @pvr2_ctrl_set_mask_value(i32, i32, i32) #1

declare dso_local i32 @pvr2_hdw_commit_ctl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
