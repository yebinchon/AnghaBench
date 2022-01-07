; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_get_port_type_description.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_get_port_type_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@t4_get_port_type_description.port_type_description = internal constant [23 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"Fiber_XFI\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Fiber_XAUI\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"BT_SGMII\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"BT_XFI\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"BT_XAUI\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"KX4\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"CX4\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"KX\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"KR\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"SFP\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"BP_AP\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"BP4_AP\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"QSFP_10G\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"QSA\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"QSFP\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"BP40_BA\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"KR4_100G\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"CR4_QSFP\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"CR_QSFP\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"CR2_QSFP\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"SFP28\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"KR_SFP28\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"KR_XLAUI\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @t4_get_port_type_description(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([23 x i8*], [23 x i8*]* @t4_get_port_type_description.port_type_description, i64 0, i64 0))
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [23 x i8*], [23 x i8*]* @t4_get_port_type_description.port_type_description, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %2, align 8
  br label %13

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %13

13:                                               ; preds = %12, %7
  %14 = load i8*, i8** %2, align 8
  ret i8* %14
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
