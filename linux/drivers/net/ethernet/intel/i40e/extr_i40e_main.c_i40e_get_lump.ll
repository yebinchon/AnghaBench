; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_get_lump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_get_lump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_lump_tracking = type { i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@I40E_PILE_VALID_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"param err: pile=%s needed=%d id=0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<valid>\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*, %struct.i40e_lump_tracking*, i32, i32)* @i40e_get_lump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_lump(%struct.i40e_pf* %0, %struct.i40e_lump_tracking* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_lump_tracking*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %6, align 8
  store %struct.i40e_lump_tracking* %1, %struct.i40e_lump_tracking** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.i40e_lump_tracking*, %struct.i40e_lump_tracking** %7, align 8
  %16 = icmp ne %struct.i40e_lump_tracking* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @I40E_PILE_VALID_BIT, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20, %17, %4
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %26 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.i40e_lump_tracking*, %struct.i40e_lump_tracking** %7, align 8
  %30 = icmp ne %struct.i40e_lump_tracking* %29, null
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @dev_info(i32* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %132

38:                                               ; preds = %20
  %39 = load %struct.i40e_lump_tracking*, %struct.i40e_lump_tracking** %7, align 8
  %40 = getelementptr inbounds %struct.i40e_lump_tracking, %struct.i40e_lump_tracking* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %126, %59, %38
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.i40e_lump_tracking*, %struct.i40e_lump_tracking** %7, align 8
  %45 = getelementptr inbounds %struct.i40e_lump_tracking, %struct.i40e_lump_tracking* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %130

48:                                               ; preds = %42
  %49 = load %struct.i40e_lump_tracking*, %struct.i40e_lump_tracking** %7, align 8
  %50 = getelementptr inbounds %struct.i40e_lump_tracking, %struct.i40e_lump_tracking* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @I40E_PILE_VALID_BIT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %42

62:                                               ; preds = %48
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %92, %62
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %68, %69
  %71 = load %struct.i40e_lump_tracking*, %struct.i40e_lump_tracking** %7, align 8
  %72 = getelementptr inbounds %struct.i40e_lump_tracking, %struct.i40e_lump_tracking* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br label %75

75:                                               ; preds = %67, %63
  %76 = phi i1 [ false, %63 ], [ %74, %67 ]
  br i1 %76, label %77, label %95

77:                                               ; preds = %75
  %78 = load %struct.i40e_lump_tracking*, %struct.i40e_lump_tracking** %7, align 8
  %79 = getelementptr inbounds %struct.i40e_lump_tracking, %struct.i40e_lump_tracking* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @I40E_PILE_VALID_BIT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %95

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %63

95:                                               ; preds = %90, %75
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %126

99:                                               ; preds = %95
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %116, %99
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @I40E_PILE_VALID_BIT, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.i40e_lump_tracking*, %struct.i40e_lump_tracking** %7, align 8
  %109 = getelementptr inbounds %struct.i40e_lump_tracking, %struct.i40e_lump_tracking* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  store i32 %107, i32* %115, align 4
  br label %116

116:                                              ; preds = %104
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %100

119:                                              ; preds = %100
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %121, %122
  %124 = load %struct.i40e_lump_tracking*, %struct.i40e_lump_tracking** %7, align 8
  %125 = getelementptr inbounds %struct.i40e_lump_tracking, %struct.i40e_lump_tracking* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  br label %130

126:                                              ; preds = %95
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %11, align 4
  br label %42

130:                                              ; preds = %119, %42
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %24
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
