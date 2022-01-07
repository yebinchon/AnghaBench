; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_send_msg_to_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_send_msg_to_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, i64, i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i32, %struct.i40e_hw, %struct.TYPE_5__* }
%struct.i40e_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"VF %d failed opcode %d, retval: %d\0A\00", align 1
@I40E_DEFAULT_NUM_INVALID_MSGS_ALLOWED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Number of invalid messages exceeded for VF %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Use PF Control I/F to enable the VF\0A\00", align 1
@I40E_VF_STATE_DISABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Unable to send the message to VF %d aq_err %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32, i32, i32*, i32)* @i40e_vc_send_msg_to_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_send_msg_to_vf(%struct.i40e_vf* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_vf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40e_pf*, align 8
  %13 = alloca %struct.i40e_hw*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.i40e_vf* %0, %struct.i40e_vf** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.i40e_vf*, %struct.i40e_vf** %7, align 8
  %17 = icmp ne %struct.i40e_vf* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load %struct.i40e_vf*, %struct.i40e_vf** %7, align 8
  %20 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.i40e_vf*, %struct.i40e_vf** %7, align 8
  %23 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %22, i32 0, i32 4
  %24 = load %struct.i40e_pf*, %struct.i40e_pf** %23, align 8
  %25 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %21, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18, %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %120

31:                                               ; preds = %18
  %32 = load %struct.i40e_vf*, %struct.i40e_vf** %7, align 8
  %33 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %32, i32 0, i32 4
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %33, align 8
  store %struct.i40e_pf* %34, %struct.i40e_pf** %12, align 8
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  %36 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %35, i32 0, i32 1
  store %struct.i40e_hw* %36, %struct.i40e_hw** %13, align 8
  %37 = load %struct.i40e_vf*, %struct.i40e_vf** %7, align 8
  %38 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %13, align 8
  %41 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %39, %43
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %86

47:                                               ; preds = %31
  %48 = load %struct.i40e_vf*, %struct.i40e_vf** %7, align 8
  %49 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  %53 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.i40e_vf*, %struct.i40e_vf** %7, align 8
  %57 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %60)
  %62 = load %struct.i40e_vf*, %struct.i40e_vf** %7, align 8
  %63 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @I40E_DEFAULT_NUM_INVALID_MSGS_ALLOWED, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %47
  %68 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  %69 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.i40e_vf*, %struct.i40e_vf** %7, align 8
  %73 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  %77 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = call i32 (i32*, i8*, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @I40E_VF_STATE_DISABLED, align 4
  %82 = load %struct.i40e_vf*, %struct.i40e_vf** %7, align 8
  %83 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %82, i32 0, i32 3
  %84 = call i32 @set_bit(i32 %81, i32* %83)
  br label %85

85:                                               ; preds = %67, %47
  br label %93

86:                                               ; preds = %31
  %87 = load %struct.i40e_vf*, %struct.i40e_vf** %7, align 8
  %88 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load %struct.i40e_vf*, %struct.i40e_vf** %7, align 8
  %92 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %86, %85
  %94 = load %struct.i40e_hw*, %struct.i40e_hw** %13, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i64 @i40e_aq_send_msg_to_vf(%struct.i40e_hw* %94, i32 %95, i32 %96, i32 %97, i32* %98, i32 %99, i32* null)
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* %15, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %93
  %104 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  %105 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %104, i32 0, i32 2
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load %struct.i40e_vf*, %struct.i40e_vf** %7, align 8
  %109 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  %112 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %107, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %115)
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %6, align 4
  br label %120

119:                                              ; preds = %93
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %119, %103, %28
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @i40e_aq_send_msg_to_vf(%struct.i40e_hw*, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
