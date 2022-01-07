; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdchar.c_mtdchar_blkpg_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdchar.c_mtdchar_blkpg_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.blkpg_ioctl_arg = type { i32, i32 }
%struct.blkpg_partition = type { i8*, i32, i32, i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BLKPG_DEVNAMELTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.blkpg_ioctl_arg*)* @mtdchar_blkpg_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdchar_blkpg_ioctl(%struct.mtd_info* %0, %struct.blkpg_ioctl_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.blkpg_ioctl_arg*, align 8
  %6 = alloca %struct.blkpg_partition, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.blkpg_ioctl_arg* %1, %struct.blkpg_ioctl_arg** %5, align 8
  %7 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %8 = call i32 @capable(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EPERM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %63

13:                                               ; preds = %2
  %14 = load %struct.blkpg_ioctl_arg*, %struct.blkpg_ioctl_arg** %5, align 8
  %15 = getelementptr inbounds %struct.blkpg_ioctl_arg, %struct.blkpg_ioctl_arg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @copy_from_user(%struct.blkpg_partition* %6, i32 %16, i32 24)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %63

22:                                               ; preds = %13
  %23 = load %struct.blkpg_ioctl_arg*, %struct.blkpg_ioctl_arg** %5, align 8
  %24 = getelementptr inbounds %struct.blkpg_ioctl_arg, %struct.blkpg_ioctl_arg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %60 [
    i32 129, label %26
    i32 128, label %48
  ]

26:                                               ; preds = %22
  %27 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %28 = call i32 @mtd_is_partition(%struct.mtd_info* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %63

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.blkpg_partition, %struct.blkpg_partition* %6, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* @BLKPG_DEVNAMELTH, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %41 = getelementptr inbounds %struct.blkpg_partition, %struct.blkpg_partition* %6, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds %struct.blkpg_partition, %struct.blkpg_partition* %6, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.blkpg_partition, %struct.blkpg_partition* %6, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mtd_add_partition(%struct.mtd_info* %40, i8* %42, i32 %44, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %63

48:                                               ; preds = %22
  %49 = getelementptr inbounds %struct.blkpg_partition, %struct.blkpg_partition* %6, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %48
  %56 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %57 = getelementptr inbounds %struct.blkpg_partition, %struct.blkpg_partition* %6, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mtd_del_partition(%struct.mtd_info* %56, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %63

60:                                               ; preds = %22
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %55, %52, %33, %30, %19, %10
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @copy_from_user(%struct.blkpg_partition*, i32, i32) #1

declare dso_local i32 @mtd_is_partition(%struct.mtd_info*) #1

declare dso_local i32 @mtd_add_partition(%struct.mtd_info*, i8*, i32, i32) #1

declare dso_local i32 @mtd_del_partition(%struct.mtd_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
