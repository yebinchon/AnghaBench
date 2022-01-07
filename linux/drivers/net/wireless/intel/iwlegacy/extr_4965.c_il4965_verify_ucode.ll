; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_verify_ucode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_verify_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"Bootstrap uCode is good in inst SRAM\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Initialize uCode is good in inst SRAM\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Runtime uCode is good in inst SRAM\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"NO VALID UCODE IMAGE IN INSTRUCTION SRAM!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_verify_ucode(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %7 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %4, align 8
  %12 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %13 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @il4965_verify_inst_sparse(%struct.il_priv* %16, i32* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = call i32 @D_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

24:                                               ; preds = %1
  %25 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %4, align 8
  %30 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %31 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %5, align 4
  %34 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @il4965_verify_inst_sparse(%struct.il_priv* %34, i32* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %24
  %41 = call i32 @D_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

42:                                               ; preds = %24
  %43 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %44 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %4, align 8
  %48 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %49 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %5, align 4
  %52 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @il4965_verify_inst_sparse(%struct.il_priv* %52, i32* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %42
  %59 = call i32 @D_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

60:                                               ; preds = %42
  %61 = call i32 @IL_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %63 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %4, align 8
  %67 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %68 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %5, align 4
  %71 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @il4965_verify_inst_full(%struct.il_priv* %71, i32* %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %60, %58, %40, %22
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @il4965_verify_inst_sparse(%struct.il_priv*, i32*, i32) #1

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @il4965_verify_inst_full(%struct.il_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
