; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_store_eb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_store_eb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { i32, %struct.swap_eb* }
%struct.swap_eb = type { i32, i32 }

@EBLOCK_BITFLIP = common dso_local global i32 0, align 4
@MTDSWAP_BITFLIP = common dso_local global i32 0, align 4
@EBLOCK_READERR = common dso_local global i32 0, align 4
@EBLOCK_FAILED = common dso_local global i32 0, align 4
@MTDSWAP_FAILING = common dso_local global i32 0, align 4
@MTDSWAP_USED = common dso_local global i32 0, align 4
@MTDSWAP_DIRTY = common dso_local global i32 0, align 4
@MTDSWAP_LOWFRAG = common dso_local global i32 0, align 4
@MTDSWAP_HIFRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtdswap_dev*, %struct.swap_eb*)* @mtdswap_store_eb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtdswap_store_eb(%struct.mtdswap_dev* %0, %struct.swap_eb* %1) #0 {
  %3 = alloca %struct.mtdswap_dev*, align 8
  %4 = alloca %struct.swap_eb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %3, align 8
  store %struct.swap_eb* %1, %struct.swap_eb** %4, align 8
  %7 = load %struct.swap_eb*, %struct.swap_eb** %4, align 8
  %8 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.swap_eb*, %struct.swap_eb** %4, align 8
  %14 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %14, i32 0, i32 1
  %16 = load %struct.swap_eb*, %struct.swap_eb** %15, align 8
  %17 = icmp eq %struct.swap_eb* %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %80

19:                                               ; preds = %2
  %20 = load %struct.swap_eb*, %struct.swap_eb** %4, align 8
  %21 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @EBLOCK_BITFLIP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %3, align 8
  %28 = load %struct.swap_eb*, %struct.swap_eb** %4, align 8
  %29 = load i32, i32* @MTDSWAP_BITFLIP, align 4
  %30 = call i32 @mtdswap_rb_add(%struct.mtdswap_dev* %27, %struct.swap_eb* %28, i32 %29)
  br label %46

31:                                               ; preds = %19
  %32 = load %struct.swap_eb*, %struct.swap_eb** %4, align 8
  %33 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EBLOCK_READERR, align 4
  %36 = load i32, i32* @EBLOCK_FAILED, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %3, align 8
  %42 = load %struct.swap_eb*, %struct.swap_eb** %4, align 8
  %43 = load i32, i32* @MTDSWAP_FAILING, align 4
  %44 = call i32 @mtdswap_rb_add(%struct.mtdswap_dev* %41, %struct.swap_eb* %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %31
  br label %46

46:                                               ; preds = %45, %26
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %3, align 8
  %52 = load %struct.swap_eb*, %struct.swap_eb** %4, align 8
  %53 = load i32, i32* @MTDSWAP_USED, align 4
  %54 = call i32 @mtdswap_rb_add(%struct.mtdswap_dev* %51, %struct.swap_eb* %52, i32 %53)
  br label %80

55:                                               ; preds = %46
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %3, align 8
  %60 = load %struct.swap_eb*, %struct.swap_eb** %4, align 8
  %61 = load i32, i32* @MTDSWAP_DIRTY, align 4
  %62 = call i32 @mtdswap_rb_add(%struct.mtdswap_dev* %59, %struct.swap_eb* %60, i32 %61)
  br label %79

63:                                               ; preds = %55
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = udiv i32 %65, 2
  %67 = icmp ugt i32 %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %3, align 8
  %70 = load %struct.swap_eb*, %struct.swap_eb** %4, align 8
  %71 = load i32, i32* @MTDSWAP_LOWFRAG, align 4
  %72 = call i32 @mtdswap_rb_add(%struct.mtdswap_dev* %69, %struct.swap_eb* %70, i32 %71)
  br label %78

73:                                               ; preds = %63
  %74 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %3, align 8
  %75 = load %struct.swap_eb*, %struct.swap_eb** %4, align 8
  %76 = load i32, i32* @MTDSWAP_HIFRAG, align 4
  %77 = call i32 @mtdswap_rb_add(%struct.mtdswap_dev* %74, %struct.swap_eb* %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %78, %58
  br label %80

80:                                               ; preds = %18, %79, %50
  ret void
}

declare dso_local i32 @mtdswap_rb_add(%struct.mtdswap_dev*, %struct.swap_eb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
