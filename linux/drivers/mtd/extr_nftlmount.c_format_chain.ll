; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_nftlmount.c_format_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_nftlmount.c_format_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NFTLrecord = type { i32*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Formatting chain at block %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Formatting block %d\0A\00", align 1
@BLOCK_RESERVED = common dso_local global i32 0, align 4
@BLOCK_FREE = common dso_local global i32 0, align 4
@BLOCK_NIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"incorrect ReplUnitTable[] : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.NFTLrecord*, i32)* @format_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_chain(%struct.NFTLrecord* %0, i32 %1) #0 {
  %3 = alloca %struct.NFTLrecord*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.NFTLrecord* %0, %struct.NFTLrecord** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %65, %2
  %11 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %12 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @NFTL_formatblock(%struct.NFTLrecord* %20, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %10
  %25 = load i32, i32* @BLOCK_RESERVED, align 4
  %26 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %27 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  br label %40

32:                                               ; preds = %10
  %33 = load i32, i32* @BLOCK_FREE, align 4
  %34 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %35 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  br label %40

40:                                               ; preds = %32, %24
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @BLOCK_NIL, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %48 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %45, %40
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @BLOCK_NIL, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %61 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp uge i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %54
  br label %66

65:                                               ; preds = %58
  br label %10

66:                                               ; preds = %64
  ret void
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i64 @NFTL_formatblock(%struct.NFTLrecord*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
