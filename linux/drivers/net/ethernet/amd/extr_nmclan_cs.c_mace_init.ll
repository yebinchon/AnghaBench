; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_nmclan_cs.c_mace_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_nmclan_cs.c_mace_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACE_BIUCC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"reset failed, card removed?\0A\00", align 1
@MACE_FIFOCC = common dso_local global i32 0, align 4
@MACE_RCVFC = common dso_local global i32 0, align 4
@MACE_IMR = common dso_local global i32 0, align 4
@if_port = common dso_local global i32 0, align 4
@MACE_PLSCC = common dso_local global i32 0, align 4
@MACE_PHYCC = common dso_local global i32 0, align 4
@MACE_IAC = common dso_local global i32 0, align 4
@MACE_IAC_ADDRCHG = common dso_local global i32 0, align 4
@MACE_IAC_PHYADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ADDRCHG timeout, card removed?\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@MACE_PADR = common dso_local global i32 0, align 4
@MACE_MACCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @mace_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mace_init(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MACE_BIUCC, align 4
  %13 = call i32 @mace_write(i32* %10, i32 %11, i32 %12, i32 1)
  br label %14

14:                                               ; preds = %27, %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MACE_BIUCC, align 4
  %18 = call i32 @mace_read(i32* %15, i32 %16, i32 %17)
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = icmp sgt i32 %23, 500
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %109

27:                                               ; preds = %21
  %28 = call i32 @udelay(i32 1)
  br label %14

29:                                               ; preds = %14
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MACE_BIUCC, align 4
  %33 = call i32 @mace_write(i32* %30, i32 %31, i32 %32, i32 0)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MACE_FIFOCC, align 4
  %37 = call i32 @mace_write(i32* %34, i32 %35, i32 %36, i32 15)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @MACE_RCVFC, align 4
  %41 = call i32 @mace_write(i32* %38, i32 %39, i32 %40, i32 0)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MACE_IMR, align 4
  %45 = call i32 @mace_write(i32* %42, i32 %43, i32 %44, i32 255)
  %46 = load i32, i32* @if_port, align 4
  switch i32 %46, label %57 [
    i32 1, label %47
    i32 2, label %52
  ]

47:                                               ; preds = %29
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @MACE_PLSCC, align 4
  %51 = call i32 @mace_write(i32* %48, i32 %49, i32 %50, i32 2)
  br label %62

52:                                               ; preds = %29
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @MACE_PLSCC, align 4
  %56 = call i32 @mace_write(i32* %53, i32 %54, i32 %55, i32 0)
  br label %62

57:                                               ; preds = %29
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MACE_PHYCC, align 4
  %61 = call i32 @mace_write(i32* %58, i32 %59, i32 %60, i32 4)
  br label %62

62:                                               ; preds = %57, %52, %47
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @MACE_IAC, align 4
  %66 = load i32, i32* @MACE_IAC_ADDRCHG, align 4
  %67 = load i32, i32* @MACE_IAC_PHYADDR, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @mace_write(i32* %63, i32 %64, i32 %65, i32 %68)
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %84, %62
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @MACE_IAC, align 4
  %74 = call i32 @mace_read(i32* %71, i32 %72, i32 %73)
  %75 = load i32, i32* @MACE_IAC_ADDRCHG, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  %81 = icmp sgt i32 %80, 500
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %109

84:                                               ; preds = %78
  br label %70

85:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %101, %85
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @MACE_PADR, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = call i32 @mace_write(i32* %91, i32 %92, i32 %93, i32 %99)
  br label %101

101:                                              ; preds = %90
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %86

104:                                              ; preds = %86
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @MACE_MACCC, align 4
  %108 = call i32 @mace_write(i32* %105, i32 %106, i32 %107, i32 0)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %104, %82, %25
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @mace_write(i32*, i32, i32, i32) #1

declare dso_local i32 @mace_read(i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
