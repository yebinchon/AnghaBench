; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_save_restore_cs_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_save_restore_cs_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmnand_host = type { %struct.TYPE_2__, i32, %struct.brcmnand_controller* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.brcmnand_controller = type { i32 }

@BRCMNAND_CS_CFG = common dso_local global i32 0, align 4
@BRCMNAND_CS_CFG_EXT = common dso_local global i32 0, align 4
@BRCMNAND_CS_ACC_CONTROL = common dso_local global i32 0, align 4
@BRCMNAND_CS_TIMING1 = common dso_local global i32 0, align 4
@BRCMNAND_CS_TIMING2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmnand_host*, i32)* @brcmnand_save_restore_cs_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmnand_save_restore_cs_config(%struct.brcmnand_host* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmnand_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmnand_controller*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.brcmnand_host* %0, %struct.brcmnand_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %12 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %11, i32 0, i32 2
  %13 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  store %struct.brcmnand_controller* %13, %struct.brcmnand_controller** %5, align 8
  %14 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %15 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %16 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BRCMNAND_CS_CFG, align 4
  %19 = call i64 @brcmnand_cs_offset(%struct.brcmnand_controller* %14, i32 %17, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %21 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %22 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BRCMNAND_CS_CFG_EXT, align 4
  %25 = call i64 @brcmnand_cs_offset(%struct.brcmnand_controller* %20, i32 %23, i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %27 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %28 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BRCMNAND_CS_ACC_CONTROL, align 4
  %31 = call i64 @brcmnand_cs_offset(%struct.brcmnand_controller* %26, i32 %29, i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %33 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %34 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BRCMNAND_CS_TIMING1, align 4
  %37 = call i64 @brcmnand_cs_offset(%struct.brcmnand_controller* %32, i32 %35, i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %39 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %40 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BRCMNAND_CS_TIMING2, align 4
  %43 = call i64 @brcmnand_cs_offset(%struct.brcmnand_controller* %38, i32 %41, i32 %42)
  store i64 %43, i64* %10, align 8
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %2
  %47 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %50 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @nand_writereg(%struct.brcmnand_controller* %47, i64 %48, i8* %52)
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %61 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @nand_writereg(%struct.brcmnand_controller* %58, i64 %59, i8* %63)
  br label %65

65:                                               ; preds = %57, %46
  %66 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %69 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @nand_writereg(%struct.brcmnand_controller* %66, i64 %67, i8* %71)
  %73 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %76 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @nand_writereg(%struct.brcmnand_controller* %73, i64 %74, i8* %78)
  %80 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %83 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @nand_writereg(%struct.brcmnand_controller* %80, i64 %81, i8* %85)
  br label %123

87:                                               ; preds = %2
  %88 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i8* @nand_readreg(%struct.brcmnand_controller* %88, i64 %89)
  %91 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %92 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  store i8* %90, i8** %93, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %87
  %98 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i8* @nand_readreg(%struct.brcmnand_controller* %98, i64 %99)
  %101 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %102 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  store i8* %100, i8** %103, align 8
  br label %104

104:                                              ; preds = %97, %87
  %105 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i8* @nand_readreg(%struct.brcmnand_controller* %105, i64 %106)
  %108 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %109 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  store i8* %107, i8** %110, align 8
  %111 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %112 = load i64, i64* %9, align 8
  %113 = call i8* @nand_readreg(%struct.brcmnand_controller* %111, i64 %112)
  %114 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %115 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i8* %113, i8** %116, align 8
  %117 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %118 = load i64, i64* %10, align 8
  %119 = call i8* @nand_readreg(%struct.brcmnand_controller* %117, i64 %118)
  %120 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %121 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i8* %119, i8** %122, align 8
  br label %123

123:                                              ; preds = %104, %65
  ret void
}

declare dso_local i64 @brcmnand_cs_offset(%struct.brcmnand_controller*, i32, i32) #1

declare dso_local i32 @nand_writereg(%struct.brcmnand_controller*, i64, i8*) #1

declare dso_local i8* @nand_readreg(%struct.brcmnand_controller*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
