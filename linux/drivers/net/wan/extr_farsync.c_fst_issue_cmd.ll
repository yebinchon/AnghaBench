; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_issue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_issue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_port_info = type { i64, i64, i64, i64, %struct.fst_card_info* }
%struct.fst_card_info = type { i32 }

@portMailbox = common dso_local global i32** null, align 8
@NAK = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [24 x i8] c"Mailbox safety timeout\0A\00", align 1
@DBG_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Mailbox clear after %d jiffies\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"issue_cmd: previous command was NAK'd\0A\00", align 1
@ABORTTX = common dso_local global i16 0, align 2
@STARTPORT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_port_info*, i16)* @fst_issue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_issue_cmd(%struct.fst_port_info* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.fst_port_info*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.fst_card_info*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fst_port_info* %0, %struct.fst_port_info** %3, align 8
  store i16 %1, i16* %4, align 2
  %9 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %10 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %9, i32 0, i32 4
  %11 = load %struct.fst_card_info*, %struct.fst_card_info** %10, align 8
  store %struct.fst_card_info* %11, %struct.fst_card_info** %5, align 8
  %12 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %13 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %12, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %17 = load i32**, i32*** @portMailbox, align 8
  %18 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %19 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32*, i32** %17, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call zeroext i16 @FST_RDW(%struct.fst_card_info* %16, i32 %24)
  store i16 %25, i16* %6, align 2
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %47, %2
  %27 = load i16, i16* %6, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* @NAK, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %26
  %33 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %34 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %33, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = call i32 @schedule_timeout_uninterruptible(i32 1)
  %38 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %39 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %38, i32 0, i32 0
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = icmp sgt i32 %43, 2000
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %58

47:                                               ; preds = %32
  %48 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %49 = load i32**, i32*** @portMailbox, align 8
  %50 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %51 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32*, i32** %49, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call zeroext i16 @FST_RDW(%struct.fst_card_info* %48, i32 %56)
  store i16 %57, i16* %6, align 2
  br label %26

58:                                               ; preds = %45, %26
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* @DBG_CMD, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i32, i8*, ...) @dbg(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i16, i16* %6, align 2
  %67 = zext i16 %66 to i32
  %68 = load i16, i16* @NAK, align 2
  %69 = zext i16 %68 to i32
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @DBG_CMD, align 4
  %73 = call i32 (i32, i8*, ...) @dbg(i32 %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %65
  %75 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %76 = load i32**, i32*** @portMailbox, align 8
  %77 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %78 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32*, i32** %76, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i16, i16* %4, align 2
  %85 = call i32 @FST_WRW(%struct.fst_card_info* %75, i32 %83, i16 zeroext %84)
  %86 = load i16, i16* %4, align 2
  %87 = zext i16 %86 to i32
  %88 = load i16, i16* @ABORTTX, align 2
  %89 = zext i16 %88 to i32
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %74
  %92 = load i16, i16* %4, align 2
  %93 = zext i16 %92 to i32
  %94 = load i16, i16* @STARTPORT, align 2
  %95 = zext i16 %94 to i32
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %91, %74
  %98 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %99 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %101 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %103 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %97, %91
  %105 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %106 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %105, i32 0, i32 0
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i16 @FST_RDW(%struct.fst_card_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dbg(i32, i8*, ...) #1

declare dso_local i32 @FST_WRW(%struct.fst_card_info*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
