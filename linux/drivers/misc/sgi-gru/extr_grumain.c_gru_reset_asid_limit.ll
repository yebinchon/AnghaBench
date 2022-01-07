; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_reset_asid_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_reset_asid_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_state = type { i32, i32, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"gid %d, asid 0x%x\0A\00", align 1
@asid_next = common dso_local global i32 0, align 4
@MAX_ASID = common dso_local global i32 0, align 4
@GRU_NUM_CCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"gid %d, gts %p, gms %p, inuse 0x%x, cxt %d\0A\00", align 1
@ASID_INC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"gid %d, new asid 0x%x, new_limit 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gru_state*, i32)* @gru_reset_asid_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gru_reset_asid_limit(%struct.gru_state* %0, i32 %1) #0 {
  %3 = alloca %struct.gru_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gru_state* %0, %struct.gru_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @grudev, align 4
  %10 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %11 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i32, i8*, i32, ...) @gru_dbg(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* @asid_next, align 4
  %16 = call i32 @STAT(i32 %15)
  %17 = load i32, i32* @MAX_ASID, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %23 = call i32 @gru_wrap_asid(%struct.gru_state* %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %26 = call i32 @gru_flush_all_tlb(%struct.gru_state* %25)
  %27 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %28 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %115, %24
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %128, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @GRU_NUM_CCH, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %131

35:                                               ; preds = %31
  %36 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %37 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 %40
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %35
  %45 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %46 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %45, i32 0, i32 3
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %47, i64 %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = call i64 @is_kernel_context(%struct.TYPE_6__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44, %35
  br label %128

55:                                               ; preds = %44
  %56 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %57 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %56, i32 0, i32 3
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %58, i64 %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @grudev, align 4
  %73 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %74 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %77 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %76, i32 0, i32 3
  %78 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %78, i64 %80
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %84 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %83, i32 0, i32 3
  %85 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %85, i64 %87
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 (i32, i8*, i32, ...) @gru_dbg(i32 %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %75, %struct.TYPE_6__* %82, %struct.TYPE_5__* %91, i32 %92, i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %55
  %99 = load i64, i64* @ASID_INC, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %98
  %108 = load i32, i32* @MAX_ASID, align 4
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @MAX_ASID, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %114 = call i32 @gru_wrap_asid(%struct.gru_state* %113)
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %112, %107
  br label %30

116:                                              ; preds = %98
  br label %117

117:                                              ; preds = %116, %55
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %125, %121, %117
  br label %128

128:                                              ; preds = %127, %54
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %31

131:                                              ; preds = %31
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %134 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %4, align 4
  %136 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %137 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @grudev, align 4
  %139 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %140 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 (i32, i8*, i32, ...) @gru_dbg(i32 %138, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %142, i32 %143)
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @gru_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @gru_wrap_asid(%struct.gru_state*) #1

declare dso_local i32 @gru_flush_all_tlb(%struct.gru_state*) #1

declare dso_local i64 @is_kernel_context(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
