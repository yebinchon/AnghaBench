; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad_debugfs.c_bnad_debugfs_open_fwsave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad_debugfs.c_bnad_debugfs_open_fwsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.bnad* }
%struct.bnad = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { %struct.bnad_debug_info* }
%struct.bnad_debug_info = type { i32, %struct.bnad_debug_info* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BNA_DBG_FWTRC_LEN = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@BFA_STATUS_ENOFSAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to collect fwsave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @bnad_debugfs_open_fwsave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_debugfs_open_fwsave(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.bnad*, align 8
  %7 = alloca %struct.bnad_debug_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.bnad*, %struct.bnad** %11, align 8
  store %struct.bnad* %12, %struct.bnad** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 16, i32 %13)
  %15 = bitcast i8* %14 to %struct.bnad_debug_info*
  store %struct.bnad_debug_info* %15, %struct.bnad_debug_info** %7, align 8
  %16 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %17 = icmp ne %struct.bnad_debug_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %87

21:                                               ; preds = %2
  %22 = load i32, i32* @BNA_DBG_FWTRC_LEN, align 4
  %23 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %24 = getelementptr inbounds %struct.bnad_debug_info, %struct.bnad_debug_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %26 = getelementptr inbounds %struct.bnad_debug_info, %struct.bnad_debug_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kzalloc(i32 %27, i32 %28)
  %30 = bitcast i8* %29 to %struct.bnad_debug_info*
  %31 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %32 = getelementptr inbounds %struct.bnad_debug_info, %struct.bnad_debug_info* %31, i32 0, i32 1
  store %struct.bnad_debug_info* %30, %struct.bnad_debug_info** %32, align 8
  %33 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %34 = getelementptr inbounds %struct.bnad_debug_info, %struct.bnad_debug_info* %33, i32 0, i32 1
  %35 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %34, align 8
  %36 = icmp ne %struct.bnad_debug_info* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %21
  %38 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %39 = call i32 @kfree(%struct.bnad_debug_info* %38)
  store %struct.bnad_debug_info* null, %struct.bnad_debug_info** %7, align 8
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %87

42:                                               ; preds = %21
  %43 = load %struct.bnad*, %struct.bnad** %6, align 8
  %44 = getelementptr inbounds %struct.bnad, %struct.bnad* %43, i32 0, i32 1
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.bnad*, %struct.bnad** %6, align 8
  %48 = getelementptr inbounds %struct.bnad, %struct.bnad* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %52 = getelementptr inbounds %struct.bnad_debug_info, %struct.bnad_debug_info* %51, i32 0, i32 1
  %53 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %52, align 8
  %54 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %55 = getelementptr inbounds %struct.bnad_debug_info, %struct.bnad_debug_info* %54, i32 0, i32 0
  %56 = call i32 @bfa_nw_ioc_debug_fwsave(i32* %50, %struct.bnad_debug_info* %53, i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.bnad*, %struct.bnad** %6, align 8
  %58 = getelementptr inbounds %struct.bnad, %struct.bnad* %57, i32 0, i32 1
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @BFA_STATUS_OK, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %42
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @BFA_STATUS_ENOFSAVE, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %70 = getelementptr inbounds %struct.bnad_debug_info, %struct.bnad_debug_info* %69, i32 0, i32 1
  %71 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %70, align 8
  %72 = call i32 @kfree(%struct.bnad_debug_info* %71)
  %73 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %74 = getelementptr inbounds %struct.bnad_debug_info, %struct.bnad_debug_info* %73, i32 0, i32 1
  store %struct.bnad_debug_info* null, %struct.bnad_debug_info** %74, align 8
  %75 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %76 = call i32 @kfree(%struct.bnad_debug_info* %75)
  store %struct.bnad_debug_info* null, %struct.bnad_debug_info** %7, align 8
  %77 = load %struct.bnad*, %struct.bnad** %6, align 8
  %78 = getelementptr inbounds %struct.bnad, %struct.bnad* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @netdev_warn(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %87

83:                                               ; preds = %64, %42
  %84 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %85 = load %struct.file*, %struct.file** %5, align 8
  %86 = getelementptr inbounds %struct.file, %struct.file* %85, i32 0, i32 0
  store %struct.bnad_debug_info* %84, %struct.bnad_debug_info** %86, align 8
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %68, %37, %18
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.bnad_debug_info*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_nw_ioc_debug_fwsave(i32*, %struct.bnad_debug_info*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
