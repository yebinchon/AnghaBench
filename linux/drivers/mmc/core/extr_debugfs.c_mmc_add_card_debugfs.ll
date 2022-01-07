; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_debugfs.c_mmc_add_card_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_debugfs.c_mmc_add_card_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.dentry*, %struct.mmc_host* }
%struct.dentry = type { i32 }
%struct.mmc_host = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_add_card_debugfs(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %5 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %6 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 2
  %7 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  store %struct.mmc_host* %7, %struct.mmc_host** %3, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %15 = call i32 @mmc_card_id(%struct.mmc_card* %14)
  %16 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.dentry* @debugfs_create_dir(i32 %15, i32 %18)
  store %struct.dentry* %19, %struct.dentry** %4, align 8
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %22 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %21, i32 0, i32 1
  store %struct.dentry* %20, %struct.dentry** %22, align 8
  %23 = load i32, i32* @S_IRUSR, align 4
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %26 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %25, i32 0, i32 0
  %27 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23, %struct.dentry* %24, i32* %26)
  br label %28

28:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @mmc_card_id(%struct.mmc_card*) #1

declare dso_local i32 @debugfs_create_x32(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
