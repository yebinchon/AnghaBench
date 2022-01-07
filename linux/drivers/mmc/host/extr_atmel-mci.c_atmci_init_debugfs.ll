; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_init_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_init_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_mci_slot = type { i32, i32, i32, %struct.atmel_mci_slot*, %struct.mmc_host* }
%struct.mmc_host = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.atmel_mci = type { i32, i32, i32, %struct.atmel_mci*, %struct.mmc_host* }

@.str = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@atmci_regs_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@atmci_req_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"pending_events\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"completed_events\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_mci_slot*)* @atmci_init_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmci_init_debugfs(%struct.atmel_mci_slot* %0) #0 {
  %2 = alloca %struct.atmel_mci_slot*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.atmel_mci*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.atmel_mci_slot* %0, %struct.atmel_mci_slot** %2, align 8
  %6 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %2, align 8
  %7 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %6, i32 0, i32 4
  %8 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  store %struct.mmc_host* %8, %struct.mmc_host** %3, align 8
  %9 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %2, align 8
  %10 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %9, i32 0, i32 3
  %11 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %10, align 8
  %12 = bitcast %struct.atmel_mci_slot* %11 to %struct.atmel_mci*
  store %struct.atmel_mci* %12, %struct.atmel_mci** %4, align 8
  %13 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %13, i32 0, i32 0
  %15 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %15, %struct.dentry** %5, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = icmp ne %struct.dentry* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %44

19:                                               ; preds = %1
  %20 = load i32, i32* @S_IRUSR, align 4
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %23 = bitcast %struct.atmel_mci* %22 to %struct.atmel_mci_slot*
  %24 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %20, %struct.dentry* %21, %struct.atmel_mci_slot* %23, i32* @atmci_regs_fops)
  %25 = load i32, i32* @S_IRUSR, align 4
  %26 = load %struct.dentry*, %struct.dentry** %5, align 8
  %27 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %2, align 8
  %28 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %25, %struct.dentry* %26, %struct.atmel_mci_slot* %27, i32* @atmci_req_fops)
  %29 = load i32, i32* @S_IRUSR, align 4
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %32 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %31, i32 0, i32 2
  %33 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %29, %struct.dentry* %30, i32* %32)
  %34 = load i32, i32* @S_IRUSR, align 4
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %37 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %36, i32 0, i32 1
  %38 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %34, %struct.dentry* %35, i32* %37)
  %39 = load i32, i32* @S_IRUSR, align 4
  %40 = load %struct.dentry*, %struct.dentry** %5, align 8
  %41 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %42 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %41, i32 0, i32 0
  %43 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %39, %struct.dentry* %40, i32* %42)
  br label %44

44:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.atmel_mci_slot*, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_x32(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
