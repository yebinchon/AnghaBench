; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_hgo.c_vsp1_hgo_frame_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_hgo.c_vsp1_hgo_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_hgo = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vsp1_histogram_buffer = type { i8** }

@VI6_HGO_G_MAXMIN = common dso_local global i32 0, align 4
@VI6_HGO_G_SUM = common dso_local global i32 0, align 4
@VI6_HGO_EXT_HIST_ADDR = common dso_local global i32 0, align 4
@VI6_HGO_EXT_HIST_DATA = common dso_local global i32 0, align 4
@VI6_HGO_R_MAXMIN = common dso_local global i32 0, align 4
@VI6_HGO_B_MAXMIN = common dso_local global i32 0, align 4
@VI6_HGO_R_SUM = common dso_local global i32 0, align 4
@VI6_HGO_B_SUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_hgo_frame_end(%struct.vsp1_entity* %0) #0 {
  %2 = alloca %struct.vsp1_entity*, align 8
  %3 = alloca %struct.vsp1_hgo*, align 8
  %4 = alloca %struct.vsp1_histogram_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %2, align 8
  %8 = load %struct.vsp1_entity*, %struct.vsp1_entity** %2, align 8
  %9 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %8, i32 0, i32 0
  %10 = call %struct.vsp1_hgo* @to_hgo(i32* %9)
  store %struct.vsp1_hgo* %10, %struct.vsp1_hgo** %3, align 8
  %11 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %12 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %11, i32 0, i32 1
  %13 = call %struct.vsp1_histogram_buffer* @vsp1_histogram_buffer_get(%struct.TYPE_5__* %12)
  store %struct.vsp1_histogram_buffer* %13, %struct.vsp1_histogram_buffer** %4, align 8
  %14 = load %struct.vsp1_histogram_buffer*, %struct.vsp1_histogram_buffer** %4, align 8
  %15 = icmp ne %struct.vsp1_histogram_buffer* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %159

17:                                               ; preds = %1
  %18 = load %struct.vsp1_histogram_buffer*, %struct.vsp1_histogram_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.vsp1_histogram_buffer, %struct.vsp1_histogram_buffer* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  store i8** %20, i8*** %7, align 8
  %21 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %22 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 256
  br i1 %24, label %25, label %57

25:                                               ; preds = %17
  %26 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %27 = load i32, i32* @VI6_HGO_G_MAXMIN, align 4
  %28 = call i8* @vsp1_hgo_read(%struct.vsp1_hgo* %26, i32 %27)
  %29 = load i8**, i8*** %7, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %30, i8*** %7, align 8
  store i8* %28, i8** %29, align 8
  %31 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %32 = load i32, i32* @VI6_HGO_G_SUM, align 4
  %33 = call i8* @vsp1_hgo_read(%struct.vsp1_hgo* %31, i32 %32)
  %34 = load i8**, i8*** %7, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %7, align 8
  store i8* %33, i8** %34, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %53, %25
  %37 = load i32, i32* %5, align 4
  %38 = icmp ult i32 %37, 256
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %41 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @VI6_HGO_EXT_HIST_ADDR, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @vsp1_write(i32 %44, i32 %45, i32 %46)
  %48 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %49 = load i32, i32* @VI6_HGO_EXT_HIST_DATA, align 4
  %50 = call i8* @vsp1_hgo_read(%struct.vsp1_hgo* %48, i32 %49)
  %51 = load i8**, i8*** %7, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %7, align 8
  store i8* %50, i8** %51, align 8
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %36

56:                                               ; preds = %36
  store i64 2064, i64* %6, align 8
  br label %153

57:                                               ; preds = %17
  %58 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %59 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %64 = load i32, i32* @VI6_HGO_G_MAXMIN, align 4
  %65 = call i8* @vsp1_hgo_read(%struct.vsp1_hgo* %63, i32 %64)
  %66 = load i8**, i8*** %7, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** %7, align 8
  store i8* %65, i8** %66, align 8
  %68 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %69 = load i32, i32* @VI6_HGO_G_SUM, align 4
  %70 = call i8* @vsp1_hgo_read(%struct.vsp1_hgo* %68, i32 %69)
  %71 = load i8**, i8*** %7, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %72, i8*** %7, align 8
  store i8* %70, i8** %71, align 8
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %83, %62
  %74 = load i32, i32* %5, align 4
  %75 = icmp ult i32 %74, 64
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @VI6_HGO_G_HISTO(i32 %78)
  %80 = call i8* @vsp1_hgo_read(%struct.vsp1_hgo* %77, i32 %79)
  %81 = load i8**, i8*** %7, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %82, i8*** %7, align 8
  store i8* %80, i8** %81, align 8
  br label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %5, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %73

86:                                               ; preds = %73
  store i64 528, i64* %6, align 8
  br label %152

87:                                               ; preds = %57
  %88 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %89 = load i32, i32* @VI6_HGO_R_MAXMIN, align 4
  %90 = call i8* @vsp1_hgo_read(%struct.vsp1_hgo* %88, i32 %89)
  %91 = load i8**, i8*** %7, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i32 1
  store i8** %92, i8*** %7, align 8
  store i8* %90, i8** %91, align 8
  %93 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %94 = load i32, i32* @VI6_HGO_G_MAXMIN, align 4
  %95 = call i8* @vsp1_hgo_read(%struct.vsp1_hgo* %93, i32 %94)
  %96 = load i8**, i8*** %7, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i32 1
  store i8** %97, i8*** %7, align 8
  store i8* %95, i8** %96, align 8
  %98 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %99 = load i32, i32* @VI6_HGO_B_MAXMIN, align 4
  %100 = call i8* @vsp1_hgo_read(%struct.vsp1_hgo* %98, i32 %99)
  %101 = load i8**, i8*** %7, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i32 1
  store i8** %102, i8*** %7, align 8
  store i8* %100, i8** %101, align 8
  %103 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %104 = load i32, i32* @VI6_HGO_R_SUM, align 4
  %105 = call i8* @vsp1_hgo_read(%struct.vsp1_hgo* %103, i32 %104)
  %106 = load i8**, i8*** %7, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i32 1
  store i8** %107, i8*** %7, align 8
  store i8* %105, i8** %106, align 8
  %108 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %109 = load i32, i32* @VI6_HGO_G_SUM, align 4
  %110 = call i8* @vsp1_hgo_read(%struct.vsp1_hgo* %108, i32 %109)
  %111 = load i8**, i8*** %7, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i32 1
  store i8** %112, i8*** %7, align 8
  store i8* %110, i8** %111, align 8
  %113 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %114 = load i32, i32* @VI6_HGO_B_SUM, align 4
  %115 = call i8* @vsp1_hgo_read(%struct.vsp1_hgo* %113, i32 %114)
  %116 = load i8**, i8*** %7, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i32 1
  store i8** %117, i8*** %7, align 8
  store i8* %115, i8** %116, align 8
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %148, %87
  %119 = load i32, i32* %5, align 4
  %120 = icmp ult i32 %119, 64
  br i1 %120, label %121, label %151

121:                                              ; preds = %118
  %122 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @VI6_HGO_R_HISTO(i32 %123)
  %125 = call i8* @vsp1_hgo_read(%struct.vsp1_hgo* %122, i32 %124)
  %126 = load i8**, i8*** %7, align 8
  %127 = load i32, i32* %5, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  store i8* %125, i8** %129, align 8
  %130 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @VI6_HGO_G_HISTO(i32 %131)
  %133 = call i8* @vsp1_hgo_read(%struct.vsp1_hgo* %130, i32 %132)
  %134 = load i8**, i8*** %7, align 8
  %135 = load i32, i32* %5, align 4
  %136 = add i32 %135, 64
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %134, i64 %137
  store i8* %133, i8** %138, align 8
  %139 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @VI6_HGO_B_HISTO(i32 %140)
  %142 = call i8* @vsp1_hgo_read(%struct.vsp1_hgo* %139, i32 %141)
  %143 = load i8**, i8*** %7, align 8
  %144 = load i32, i32* %5, align 4
  %145 = add i32 %144, 128
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %143, i64 %146
  store i8* %142, i8** %147, align 8
  br label %148

148:                                              ; preds = %121
  %149 = load i32, i32* %5, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %118

151:                                              ; preds = %118
  store i64 1584, i64* %6, align 8
  br label %152

152:                                              ; preds = %151, %86
  br label %153

153:                                              ; preds = %152, %56
  %154 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %3, align 8
  %155 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %154, i32 0, i32 1
  %156 = load %struct.vsp1_histogram_buffer*, %struct.vsp1_histogram_buffer** %4, align 8
  %157 = load i64, i64* %6, align 8
  %158 = call i32 @vsp1_histogram_buffer_complete(%struct.TYPE_5__* %155, %struct.vsp1_histogram_buffer* %156, i64 %157)
  br label %159

159:                                              ; preds = %153, %16
  ret void
}

declare dso_local %struct.vsp1_hgo* @to_hgo(i32*) #1

declare dso_local %struct.vsp1_histogram_buffer* @vsp1_histogram_buffer_get(%struct.TYPE_5__*) #1

declare dso_local i8* @vsp1_hgo_read(%struct.vsp1_hgo*, i32) #1

declare dso_local i32 @vsp1_write(i32, i32, i32) #1

declare dso_local i32 @VI6_HGO_G_HISTO(i32) #1

declare dso_local i32 @VI6_HGO_R_HISTO(i32) #1

declare dso_local i32 @VI6_HGO_B_HISTO(i32) #1

declare dso_local i32 @vsp1_histogram_buffer_complete(%struct.TYPE_5__*, %struct.vsp1_histogram_buffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
