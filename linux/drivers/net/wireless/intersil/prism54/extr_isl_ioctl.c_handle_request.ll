; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_handle_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.obj_mlme = type { i64, i32, i32 }

@DOT11_STATE_AUTHING = common dso_local global i64 0, align 8
@DOT11_STATE_ASSOCING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.obj_mlme*, i32)* @handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_request(%struct.TYPE_5__* %0, %struct.obj_mlme* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.obj_mlme*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.obj_mlme* %1, %struct.obj_mlme** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.obj_mlme*, %struct.obj_mlme** %5, align 8
  %8 = getelementptr inbounds %struct.obj_mlme, %struct.obj_mlme* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DOT11_STATE_AUTHING, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load %struct.obj_mlme*, %struct.obj_mlme** %5, align 8
  %14 = getelementptr inbounds %struct.obj_mlme, %struct.obj_mlme* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DOT11_STATE_ASSOCING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %12, %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = call i64 @mgt_mlme_answer(%struct.TYPE_5__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.obj_mlme*, %struct.obj_mlme** %5, align 8
  %26 = getelementptr inbounds %struct.obj_mlme, %struct.obj_mlme* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @prism54_mac_accept(i32* %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 0, i32 1
  %32 = load %struct.obj_mlme*, %struct.obj_mlme** %5, align 8
  %33 = getelementptr inbounds %struct.obj_mlme, %struct.obj_mlme* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.obj_mlme*, %struct.obj_mlme** %5, align 8
  %37 = call i32 @mgt_set_request(%struct.TYPE_5__* %34, i32 %35, i32 0, %struct.obj_mlme* %36)
  br label %38

38:                                               ; preds = %22, %18, %12
  ret void
}

declare dso_local i64 @mgt_mlme_answer(%struct.TYPE_5__*) #1

declare dso_local i64 @prism54_mac_accept(i32*, i32) #1

declare dso_local i32 @mgt_set_request(%struct.TYPE_5__*, i32, i32, %struct.obj_mlme*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
