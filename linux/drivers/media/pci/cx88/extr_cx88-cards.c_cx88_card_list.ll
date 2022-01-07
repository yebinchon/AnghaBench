; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_cx88_card_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_cx88_card_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.cx88_core = type { i32 }
%struct.pci_dev = type { i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"Your board has no valid PCI Subsystem ID and thus can't\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"be autodetected.  Please pass card=<n> insmod option to\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"workaround that.  Redirect complaints to the vendor of\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"the TV card\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Your board isn't known (yet) to the driver.  You can\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"try to pick one of the existing card configs via\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"card=<n> insmod option.  Updating to the latest\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"version might help as well.\0A\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"Here is a list of valid choices for the card=<n> insmod option:\0A\00", align 1
@cx88_boards = common dso_local global %struct.TYPE_3__* null, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"    card=%d -> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx88_core*, %struct.pci_dev*)* @cx88_card_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx88_card_list(%struct.cx88_core* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %25

20:                                               ; preds = %10, %2
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %15
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %41, %25
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cx88_boards, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cx88_boards, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %33, i32 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %27

44:                                               ; preds = %27
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
