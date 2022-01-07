; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-cards.c_cx23885_card_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-cards.c_cx23885_card_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cx23885_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [213 x i8] c"%s: Board has no valid PCIe Subsystem ID and can't\0A%s: be autodetected. Pass card=<n> insmod option\0A%s: to workaround that. Redirect complaints to the\0A%s: vendor of the TV card.  Best regards,\0A%s:         -- tux\0A\00", align 1
@.str.1 = private unnamed_addr constant [186 x i8] c"%s: Your board isn't known (yet) to the driver.\0A%s: Try to pick one of the existing card configs via\0A%s: card=<n> insmod option.  Updating to the latest\0A%s: version might help as well.\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"%s: Here is a list of valid choices for the card=<n> insmod option:\0A\00", align 1
@cx23885_bcount = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%s:    card=%d -> %s\0A\00", align 1
@cx23885_boards = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx23885_card_list(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  %4 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 0, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %12 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 0, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %10
  %18 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %19 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %22 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %25 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %28 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %31 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([213 x i8], [213 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29, i32 %32)
  br label %48

34:                                               ; preds = %10, %1
  %35 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %36 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %39 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %42 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %45 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %34, %17
  %49 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %50 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %69, %48
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @cx23885_bcount, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %59 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cx23885_boards, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %61, i32 %67)
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %53

72:                                               ; preds = %53
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
