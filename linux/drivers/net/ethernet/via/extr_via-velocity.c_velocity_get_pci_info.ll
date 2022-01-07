; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_get_pci_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_get_pci_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.velocity_info = type { i8*, i8*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"region #0 is not an I/O resource, aborting.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"region #1 is an I/O resource, aborting.\0A\00", align 1
@VELOCITY_IO_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"region #1 is too small.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.velocity_info*)* @velocity_get_pci_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_get_pci_info(%struct.velocity_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.velocity_info*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.velocity_info* %0, %struct.velocity_info** %3, align 8
  %5 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %6 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %5, i32 0, i32 2
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %4, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @pci_set_master(%struct.pci_dev* %8)
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i8* @pci_resource_start(%struct.pci_dev* %10, i32 0)
  %12 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %13 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i8* @pci_resource_start(%struct.pci_dev* %14, i32 1)
  %16 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %17 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @pci_resource_flags(%struct.pci_dev* %18, i32 0)
  %20 = load i32, i32* @IORESOURCE_IO, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %53

29:                                               ; preds = %1
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i32 @pci_resource_flags(%struct.pci_dev* %30, i32 1)
  %32 = load i32, i32* @IORESOURCE_IO, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %53

41:                                               ; preds = %29
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = call i64 @pci_resource_len(%struct.pci_dev* %42, i32 1)
  %44 = load i64, i64* @VELOCITY_IO_SIZE, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %46, %35, %23
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
