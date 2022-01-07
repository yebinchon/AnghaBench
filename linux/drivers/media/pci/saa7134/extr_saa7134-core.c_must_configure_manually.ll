; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_must_configure_manually.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_must_configure_manually.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [374 x i8] c"saa7134: <rant>\0Asaa7134:  Congratulations!  Your TV card vendor saved a few\0Asaa7134:  cents for a eeprom, thus your pci board has no\0Asaa7134:  subsystem ID and I can't identify it automatically\0Asaa7134: </rant>\0Asaa7134: I feel better now.  Ok, here are the good news:\0Asaa7134: You can use the card=<nr> insmod option to specify\0Asaa7134: which board do you have.  The list:\0A\00", align 1
@.str.1 = private unnamed_addr constant [303 x i8] c"saa7134: Board is currently unknown. You might try to use the card=<nr>\0Asaa7134: insmod option to specify which board do you have, but this is\0Asaa7134: somewhat risky, as might damage your card. It is better to ask\0Asaa7134: for support at linux-media@vger.kernel.org.\0Asaa7134: The supported cards are:\0A\00", align 1
@saa7134_bcount = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"saa7134:   card=%d -> %-40.40s\00", align 1
@saa7134_boards = common dso_local global %struct.TYPE_4__* null, align 8
@saa7134_pci_tbl = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c" %04x:%04x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @must_configure_manually to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @must_configure_manually(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([374 x i8], [374 x i8]* @.str, i64 0, i64 0))
  br label %11

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([303 x i8], [303 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %7
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %62, %11
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @saa7134_bcount, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @saa7134_boards, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %57, %16
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @saa7134_pci_tbl, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %25
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @saa7134_pci_tbl, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %57

43:                                               ; preds = %33
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @saa7134_pci_tbl, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @saa7134_pci_tbl, align 8
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %55)
  br label %57

57:                                               ; preds = %43, %42
  %58 = load i32, i32* %4, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %25

60:                                               ; preds = %25
  %61 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %3, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %12

65:                                               ; preds = %12
  ret void
}

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
