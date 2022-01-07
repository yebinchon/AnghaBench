; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_cim_la_show_pc_t6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_cim_la_show_pc_t6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Status   Inst    Data      PC\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"  %02x   %08x %08x %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"  %02x   %02x%06x %02x%06x %02x%06x\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"  %02x   %04x%04x %04x%04x %04x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*, i32)* @cim_la_show_pc_t6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cim_la_show_pc_t6(%struct.seq_file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %10 = icmp eq i8* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = call i32 @seq_puts(%struct.seq_file* %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %94

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %7, align 8
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, i32, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 6
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 255
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 5
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 8
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 5
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 255
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 8
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 255
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 8
  %62 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, i32, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %41, i32 %45, i32 %49, i32 %53, i32 %57, i32 %61)
  %63 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 9
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 9
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 65535
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 8
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 16
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 8
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 65535
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 7
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 16
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 7
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 65535
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 6
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 16
  %93 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, i32, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %72, i32 %76, i32 %80, i32 %84, i32 %88, i32 %92)
  br label %94

94:                                               ; preds = %14, %11
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
