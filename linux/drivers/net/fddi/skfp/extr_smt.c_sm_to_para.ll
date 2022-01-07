; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_sm_to_para.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_sm_to_para.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { i32 }
%struct.smt_header = type { i32 }
%struct.smt_para = type { i32, i32 }

@PARA_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SMT : sm_to_para - length error %d\00", align 1
@SMT_P_ECHODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"SMT : sm_to_para - odd length %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sm_to_para(%struct.s_smc* %0, %struct.smt_header* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s_smc*, align 8
  %6 = alloca %struct.smt_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %5, align 8
  store %struct.smt_header* %1, %struct.smt_header** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %11, align 8
  %12 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %13 = call i32 @SK_UNUSED(%struct.s_smc* %12)
  %14 = load %struct.smt_header*, %struct.smt_header** %6, align 8
  %15 = getelementptr inbounds %struct.smt_header, %struct.smt_header* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.smt_header*, %struct.smt_header** %6, align 8
  %18 = getelementptr inbounds %struct.smt_header, %struct.smt_header* %17, i64 1
  %19 = bitcast %struct.smt_header* %18 to i8*
  store i8* %19, i8** %8, align 8
  br label %20

20:                                               ; preds = %67, %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to %struct.smt_para*
  %26 = getelementptr inbounds %struct.smt_para, %struct.smt_para* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  store i8* %31, i8** %11, align 8
  br label %32

32:                                               ; preds = %30, %23
  %33 = load i8*, i8** %8, align 8
  %34 = bitcast i8* %33 to %struct.smt_para*
  %35 = getelementptr inbounds %struct.smt_para, %struct.smt_para* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PARA_LEN, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %32
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @DB_SMT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i8* null, i8** %4, align 8
  br label %69

51:                                               ; preds = %32
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 3
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @SMT_P_ECHODATA, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @DB_SMT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store i8* null, i8** %4, align 8
  br label %69

62:                                               ; preds = %55, %51
  %63 = load i8*, i8** %11, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i8*, i8** %11, align 8
  store i8* %66, i8** %4, align 8
  br label %69

67:                                               ; preds = %62
  br label %20

68:                                               ; preds = %20
  store i8* null, i8** %4, align 8
  br label %69

69:                                               ; preds = %68, %65, %59, %48
  %70 = load i8*, i8** %4, align 8
  ret i8* %70
}

declare dso_local i32 @SK_UNUSED(%struct.s_smc*) #1

declare dso_local i32 @DB_SMT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
