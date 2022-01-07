; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_card_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_card_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuner_types = type { i32, i32, i32 }
%struct.dst_state = type { i32, i32*, i32 }

@__const.dst_card_type.get_type = private unnamed_addr constant [8 x i32] [i32 0, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [21 x i8] c"Unsupported Command\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Device Model=[%s]\0A\00", align 1
@tuner_list = common dso_local global %struct.tuner_types* null, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"DST has [%s] tuner, tuner type=[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_card_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_card_type(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tuner_types*, align 8
  %6 = alloca [8 x i32], align 16
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  store %struct.tuner_types* null, %struct.tuner_types** %5, align 8
  %7 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([8 x i32]* @__const.dst_card_type.get_type to i8*), i64 32, i1 false)
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %9 = call i32 @dst_check_sum(i32* %8, i32 7)
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  store i32 %9, i32* %10, align 4
  %11 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %13 = call i64 @dst_command(%struct.dst_state* %11, i32* %12, i32 8)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %68

17:                                               ; preds = %1
  %18 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %19 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %18, i32 0, i32 1
  %20 = call i32 @memset(i32** %19, i8 signext 0, i32 8)
  %21 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %22 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %21, i32 0, i32 1
  %23 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %24 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %23, i32 0, i32 2
  %25 = call i32 @memcpy(i32** %22, i32* %24, i32 7)
  %26 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %27 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = ptrtoint i32* %29 to i32
  %31 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 0, i32* %4, align 4
  %32 = load %struct.tuner_types*, %struct.tuner_types** @tuner_list, align 8
  store %struct.tuner_types* %32, %struct.tuner_types** %5, align 8
  br label %33

33:                                               ; preds = %62, %17
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.tuner_types*, %struct.tuner_types** @tuner_list, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.tuner_types* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %33
  %39 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %40 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load %struct.tuner_types*, %struct.tuner_types** %5, align 8
  %44 = getelementptr inbounds %struct.tuner_types, %struct.tuner_types* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strcmp(i32* %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %38
  %49 = load %struct.tuner_types*, %struct.tuner_types** %5, align 8
  %50 = getelementptr inbounds %struct.tuner_types, %struct.tuner_types* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %53 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.tuner_types*, %struct.tuner_types** %5, align 8
  %55 = getelementptr inbounds %struct.tuner_types, %struct.tuner_types* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tuner_types*, %struct.tuner_types** %5, align 8
  %58 = getelementptr inbounds %struct.tuner_types, %struct.tuner_types* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %48, %38
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  %65 = load %struct.tuner_types*, %struct.tuner_types** %5, align 8
  %66 = getelementptr inbounds %struct.tuner_types, %struct.tuner_types* %65, i32 1
  store %struct.tuner_types* %66, %struct.tuner_types** %5, align 8
  br label %33

67:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %15
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dst_check_sum(i32*, i32) #2

declare dso_local i64 @dst_command(%struct.dst_state*, i32*, i32) #2

declare dso_local i32 @dprintk(i32, i8*) #2

declare dso_local i32 @memset(i32**, i8 signext, i32) #2

declare dso_local i32 @memcpy(i32**, i32*, i32) #2

declare dso_local i32 @pr_err(i8*, i32, ...) #2

declare dso_local i32 @ARRAY_SIZE(%struct.tuner_types*) #2

declare dso_local i32 @strcmp(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
