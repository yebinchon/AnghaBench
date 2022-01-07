; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_vid_range_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_vid_range_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PRS_LU_VID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*, i8, i8)* @mvpp2_prs_vid_range_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_prs_vid_range_find(%struct.mvpp2_port* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x i8], align 1
  %9 = alloca [2 x i8], align 1
  %10 = alloca %struct.mvpp2_prs_entry, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %14 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %15 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @MVPP2_PRS_VID_PORT_FIRST(i32 %16)
  store i32 %17, i32* %13, align 4
  br label %18

18:                                               ; preds = %97, %3
  %19 = load i32, i32* %13, align 4
  %20 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %21 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @MVPP2_PRS_VID_PORT_LAST(i32 %22)
  %24 = icmp sle i32 %19, %23
  br i1 %24, label %25, label %100

25:                                               ; preds = %18
  %26 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %27 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %25
  %38 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %39 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MVPP2_PRS_LU_VID, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %37, %25
  br label %97

51:                                               ; preds = %37
  %52 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %53 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @mvpp2_prs_init_from_hw(%struct.TYPE_4__* %54, %struct.mvpp2_prs_entry* %10, i32 %55)
  %57 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %58 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %59 = call i32 @mvpp2_prs_tcam_data_byte_get(%struct.mvpp2_prs_entry* %10, i32 2, i8* %57, i8* %58)
  %60 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %61 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  %62 = call i32 @mvpp2_prs_tcam_data_byte_get(%struct.mvpp2_prs_entry* %10, i32 3, i8* %60, i8* %61)
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 15
  %67 = shl i32 %66, 8
  %68 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = add nsw i32 %67, %70
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %11, align 1
  %73 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 15
  %77 = shl i32 %76, 8
  %78 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = add nsw i32 %77, %80
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %12, align 1
  %83 = load i8, i8* %11, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %6, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %51
  %89 = load i8, i8* %12, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* %7, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88, %51
  br label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %4, align 4
  br label %103

97:                                               ; preds = %94, %50
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %18

100:                                              ; preds = %18
  %101 = load i32, i32* @ENOENT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @MVPP2_PRS_VID_PORT_FIRST(i32) #1

declare dso_local i32 @MVPP2_PRS_VID_PORT_LAST(i32) #1

declare dso_local i32 @mvpp2_prs_init_from_hw(%struct.TYPE_4__*, %struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_data_byte_get(%struct.mvpp2_prs_entry*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
