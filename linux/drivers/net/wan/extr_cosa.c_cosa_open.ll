; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosa_data = type { i32, i32, i32, %struct.channel_data* }
%struct.channel_data = type { i64, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.channel_data* }

@cosa_chardev_mutex = common dso_local global i32 0, align 4
@CARD_MINOR_BITS = common dso_local global i32 0, align 4
@nr_cards = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@cosa_cards = common dso_local global %struct.cosa_data* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@chrdev_tx_done = common dso_local global i32 0, align 4
@chrdev_setup_rx = common dso_local global i32 0, align 4
@chrdev_rx_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cosa_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cosa_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.cosa_data*, align 8
  %6 = alloca %struct.channel_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = call i32 @mutex_lock(i32* @cosa_chardev_mutex)
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call i32 @file_inode(%struct.file* %11)
  %13 = call i32 @iminor(i32 %12)
  %14 = load i32, i32* @CARD_MINOR_BITS, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @nr_cards, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %87

21:                                               ; preds = %2
  %22 = load %struct.cosa_data*, %struct.cosa_data** @cosa_cards, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %22, i64 %24
  store %struct.cosa_data* %25, %struct.cosa_data** %5, align 8
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = call i32 @file_inode(%struct.file* %26)
  %28 = call i32 @iminor(i32 %27)
  %29 = load i32, i32* @CARD_MINOR_BITS, align 4
  %30 = shl i32 1, %29
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.cosa_data*, %struct.cosa_data** %5, align 8
  %34 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %87

40:                                               ; preds = %21
  %41 = load %struct.cosa_data*, %struct.cosa_data** %5, align 8
  %42 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %41, i32 0, i32 3
  %43 = load %struct.channel_data*, %struct.channel_data** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %43, i64 %45
  store %struct.channel_data* %46, %struct.channel_data** %6, align 8
  %47 = load %struct.channel_data*, %struct.channel_data** %6, align 8
  %48 = load %struct.file*, %struct.file** %4, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 0
  store %struct.channel_data* %47, %struct.channel_data** %49, align 8
  %50 = load %struct.cosa_data*, %struct.cosa_data** %5, align 8
  %51 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %50, i32 0, i32 1
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.channel_data*, %struct.channel_data** %6, align 8
  %55 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %40
  %59 = load %struct.cosa_data*, %struct.cosa_data** %5, align 8
  %60 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %59, i32 0, i32 1
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %9, align 4
  br label %87

65:                                               ; preds = %40
  %66 = load %struct.cosa_data*, %struct.cosa_data** %5, align 8
  %67 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.channel_data*, %struct.channel_data** %6, align 8
  %71 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load i32, i32* @chrdev_tx_done, align 4
  %75 = load %struct.channel_data*, %struct.channel_data** %6, align 8
  %76 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @chrdev_setup_rx, align 4
  %78 = load %struct.channel_data*, %struct.channel_data** %6, align 8
  %79 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @chrdev_rx_done, align 4
  %81 = load %struct.channel_data*, %struct.channel_data** %6, align 8
  %82 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.cosa_data*, %struct.cosa_data** %5, align 8
  %84 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %83, i32 0, i32 1
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  br label %87

87:                                               ; preds = %65, %58, %37, %18
  %88 = call i32 @mutex_unlock(i32* @cosa_chardev_mutex)
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iminor(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
