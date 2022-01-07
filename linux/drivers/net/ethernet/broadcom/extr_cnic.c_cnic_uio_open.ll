; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_uio_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_uio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio_info = type { %struct.cnic_uio_dev* }
%struct.cnic_uio_dev = type { i32, %struct.cnic_dev* }
%struct.cnic_dev = type { i32 }
%struct.inode = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CNIC_F_CNIC_UP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uio_info*, %struct.inode*)* @cnic_uio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_uio_open(%struct.uio_info* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uio_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.cnic_uio_dev*, align 8
  %7 = alloca %struct.cnic_dev*, align 8
  store %struct.uio_info* %0, %struct.uio_info** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %8 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %9 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %8, i32 0, i32 0
  %10 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %9, align 8
  store %struct.cnic_uio_dev* %10, %struct.cnic_uio_dev** %6, align 8
  %11 = load i32, i32* @CAP_NET_ADMIN, align 4
  %12 = call i32 @capable(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %6, align 8
  %19 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %52

25:                                               ; preds = %17
  %26 = call i32 (...) @rtnl_lock()
  %27 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %6, align 8
  %28 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %27, i32 0, i32 1
  %29 = load %struct.cnic_dev*, %struct.cnic_dev** %28, align 8
  store %struct.cnic_dev* %29, %struct.cnic_dev** %7, align 8
  %30 = load %struct.cnic_dev*, %struct.cnic_dev** %7, align 8
  %31 = icmp ne %struct.cnic_dev* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i32, i32* @CNIC_F_CNIC_UP, align 4
  %34 = load %struct.cnic_dev*, %struct.cnic_dev** %7, align 8
  %35 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %34, i32 0, i32 0
  %36 = call i32 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32, %25
  %39 = call i32 (...) @rtnl_unlock()
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %52

42:                                               ; preds = %32
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call i32 @iminor(%struct.inode* %43)
  %45 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %6, align 8
  %46 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.cnic_dev*, %struct.cnic_dev** %7, align 8
  %48 = call i32 @cnic_shutdown_rings(%struct.cnic_dev* %47)
  %49 = load %struct.cnic_dev*, %struct.cnic_dev** %7, align 8
  %50 = call i32 @cnic_init_rings(%struct.cnic_dev* %49)
  %51 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %42, %38, %22, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @cnic_shutdown_rings(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_init_rings(%struct.cnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
