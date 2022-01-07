; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_setup_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_setup_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i40e_vsi = type { i64 }
%struct.i40e_channel = type { i64 }

@I40E_VSI_MAIN = common dso_local global i64 0, align 8
@I40E_VSI_VMDQ2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unsupported parent vsi type(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to setup hw_channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*, %struct.i40e_vsi*, %struct.i40e_channel*)* @i40e_setup_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_setup_channel(%struct.i40e_pf* %0, %struct.i40e_vsi* %1, %struct.i40e_channel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_pf*, align 8
  %6 = alloca %struct.i40e_vsi*, align 8
  %7 = alloca %struct.i40e_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %5, align 8
  store %struct.i40e_vsi* %1, %struct.i40e_vsi** %6, align 8
  store %struct.i40e_channel* %2, %struct.i40e_channel** %7, align 8
  %11 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %12 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @I40E_VSI_MAIN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @I40E_VSI_VMDQ2, align 4
  store i32 %17, i32* %8, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %20 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %24 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32*, i8*, ...) @dev_err(i32* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %25)
  store i32 0, i32* %4, align 4
  br label %59

27:                                               ; preds = %16
  %28 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %29 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %29, align 8
  %31 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %32 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %30, i64 %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %39 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %40 = load %struct.i40e_channel*, %struct.i40e_channel** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @i40e_setup_hw_channel(%struct.i40e_pf* %38, %struct.i40e_vsi* %39, %struct.i40e_channel* %40, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %27
  %47 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %48 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %59

52:                                               ; preds = %27
  %53 = load %struct.i40e_channel*, %struct.i40e_channel** %7, align 8
  %54 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %52, %46, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i40e_setup_hw_channel(%struct.i40e_pf*, %struct.i40e_vsi*, %struct.i40e_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
