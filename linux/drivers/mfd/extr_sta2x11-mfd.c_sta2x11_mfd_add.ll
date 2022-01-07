; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sta2x11-mfd.c_sta2x11_mfd_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sta2x11-mfd.c_sta2x11_mfd_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sta2x11_mfd = type { i32, %struct.sta2x11_instance*, i32* }
%struct.sta2x11_instance = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sta2x11_mfd_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @sta2x11_mfd_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta2x11_mfd_add(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sta2x11_mfd*, align 8
  %8 = alloca %struct.sta2x11_instance*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call %struct.sta2x11_mfd* @sta2x11_mfd_find(%struct.pci_dev* %9)
  store %struct.sta2x11_mfd* %10, %struct.sta2x11_mfd** %7, align 8
  %11 = load %struct.sta2x11_mfd*, %struct.sta2x11_mfd** %7, align 8
  %12 = icmp ne %struct.sta2x11_mfd* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %61

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call %struct.sta2x11_instance* @sta2x11_get_instance(%struct.pci_dev* %17)
  store %struct.sta2x11_instance* %18, %struct.sta2x11_instance** %8, align 8
  %19 = load %struct.sta2x11_instance*, %struct.sta2x11_instance** %8, align 8
  %20 = icmp ne %struct.sta2x11_instance* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %61

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.sta2x11_mfd* @kzalloc(i32 24, i32 %25)
  store %struct.sta2x11_mfd* %26, %struct.sta2x11_mfd** %7, align 8
  %27 = load %struct.sta2x11_mfd*, %struct.sta2x11_mfd** %7, align 8
  %28 = icmp ne %struct.sta2x11_mfd* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %61

32:                                               ; preds = %24
  %33 = load %struct.sta2x11_mfd*, %struct.sta2x11_mfd** %7, align 8
  %34 = getelementptr inbounds %struct.sta2x11_mfd, %struct.sta2x11_mfd* %33, i32 0, i32 0
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %51, %32
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.sta2x11_mfd*, %struct.sta2x11_mfd** %7, align 8
  %39 = getelementptr inbounds %struct.sta2x11_mfd, %struct.sta2x11_mfd* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @ARRAY_SIZE(i32* %40)
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load %struct.sta2x11_mfd*, %struct.sta2x11_mfd** %7, align 8
  %45 = getelementptr inbounds %struct.sta2x11_mfd, %struct.sta2x11_mfd* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @spin_lock_init(i32* %49)
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %36

54:                                               ; preds = %36
  %55 = load %struct.sta2x11_instance*, %struct.sta2x11_instance** %8, align 8
  %56 = load %struct.sta2x11_mfd*, %struct.sta2x11_mfd** %7, align 8
  %57 = getelementptr inbounds %struct.sta2x11_mfd, %struct.sta2x11_mfd* %56, i32 0, i32 1
  store %struct.sta2x11_instance* %55, %struct.sta2x11_instance** %57, align 8
  %58 = load %struct.sta2x11_mfd*, %struct.sta2x11_mfd** %7, align 8
  %59 = getelementptr inbounds %struct.sta2x11_mfd, %struct.sta2x11_mfd* %58, i32 0, i32 0
  %60 = call i32 @list_add(i32* %59, i32* @sta2x11_mfd_list)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %54, %29, %21, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.sta2x11_mfd* @sta2x11_mfd_find(%struct.pci_dev*) #1

declare dso_local %struct.sta2x11_instance* @sta2x11_get_instance(%struct.pci_dev*) #1

declare dso_local %struct.sta2x11_mfd* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
