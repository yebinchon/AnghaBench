; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_queryctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_queryctrl = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_query_ext_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_queryctrl(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_queryctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca %struct.v4l2_queryctrl*, align 8
  %6 = alloca %struct.v4l2_query_ext_ctrl, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %4, align 8
  store %struct.v4l2_queryctrl* %1, %struct.v4l2_queryctrl** %5, align 8
  %8 = bitcast %struct.v4l2_query_ext_ctrl* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 36, i1 false)
  %9 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %6, i32 0, i32 0
  %10 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %14 = call i32 @v4l2_query_ext_ctrl(%struct.v4l2_ctrl_handler* %13, %struct.v4l2_query_ext_ctrl* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %68

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %6, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %6, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %6, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %6, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strscpy(i32 %34, i32 %36, i32 4)
  %38 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %58 [
    i32 131, label %41
    i32 132, label %41
    i32 129, label %41
    i32 130, label %41
    i32 128, label %41
    i32 133, label %41
  ]

41:                                               ; preds = %19, %19, %19, %19, %19, %19
  %42 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %6, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %6, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %6, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %67

58:                                               ; preds = %19
  %59 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %59, i32 0, i32 3
  store i32 0, i32* %60, align 4
  %61 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %61, i32 0, i32 2
  store i32 0, i32* %62, align 4
  %63 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %58, %41
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @v4l2_query_ext_ctrl(%struct.v4l2_ctrl_handler*, %struct.v4l2_query_ext_ctrl*) #2

declare dso_local i32 @strscpy(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
