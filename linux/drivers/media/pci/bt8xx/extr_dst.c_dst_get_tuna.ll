; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_get_tuna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_get_tuna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i32, i64, i32*, i32, i32 }

@ATTEMPT_TUNE = common dso_local global i32 0, align 4
@HAS_LOCK = common dso_local global i32 0, align 4
@NO_DELAY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DST_TYPE_HAS_VLF = common dso_local global i32 0, align 4
@DST_TYPE_IS_ATSC = common dso_local global i64 0, align 8
@FIXED_COMM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"read not successful\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"checksum failure ?\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"checksum failure?\0A\00", align 1
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_get_tuna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_get_tuna(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  %4 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %5 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %6 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @ATTEMPT_TUNE, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %180

12:                                               ; preds = %1
  %13 = load i32, i32* @HAS_LOCK, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %16 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %20 = load i32, i32* @NO_DELAY, align 4
  %21 = call i32 @dst_wait_dst_ready(%struct.dst_state* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %180

26:                                               ; preds = %12
  %27 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %28 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DST_TYPE_HAS_VLF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %35 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DST_TYPE_IS_ATSC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %41 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %42 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @read_dst(%struct.dst_state* %40, i32* %43, i32 10)
  store i32 %44, i32* %4, align 4
  br label %53

45:                                               ; preds = %33, %26
  %46 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %47 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %48 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* @FIXED_COMM, align 4
  %52 = call i32 @read_dst(%struct.dst_state* %46, i32* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %39
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %180

59:                                               ; preds = %53
  %60 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %61 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DST_TYPE_HAS_VLF, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %59
  %67 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %68 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DST_TYPE_IS_ATSC, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %89, label %72

72:                                               ; preds = %66
  %73 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %74 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 9
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %79 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = call i32 @dst_check_sum(i32* %81, i32 9)
  %83 = icmp ne i32 %77, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %180

88:                                               ; preds = %72
  br label %106

89:                                               ; preds = %66, %59
  %90 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %91 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 9
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %96 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = call i32 @dst_check_sum(i32* %98, i32 7)
  %100 = icmp ne i32 %94, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %89
  %102 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %180

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %105, %88
  %107 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %108 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %115 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %180

121:                                              ; preds = %113, %106
  %122 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %123 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %121
  %128 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %129 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 127
  %134 = shl i32 %133, 8
  %135 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %136 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %134, %139
  %141 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %142 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  br label %166

143:                                              ; preds = %121
  %144 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %145 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 127
  %150 = shl i32 %149, 16
  %151 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %152 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 8
  %157 = add nsw i32 %150, %156
  %158 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %159 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 4
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %157, %162
  %164 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %165 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 8
  br label %166

166:                                              ; preds = %143, %127
  %167 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %168 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = mul nsw i32 %169, 1000
  %171 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %172 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %174 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %173, i32 0, i32 5
  store i32 1, i32* %174, align 4
  %175 = load i32, i32* @HAS_LOCK, align 4
  %176 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %177 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 8
  store i32 1, i32* %2, align 4
  br label %180

180:                                              ; preds = %166, %120, %101, %84, %56, %23, %11
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @dst_wait_dst_ready(%struct.dst_state*, i32) #1

declare dso_local i32 @read_dst(%struct.dst_state*, i32*, i32) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @dst_check_sum(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
