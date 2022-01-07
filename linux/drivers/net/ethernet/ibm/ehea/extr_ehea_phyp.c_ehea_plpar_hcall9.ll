; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_phyp.c_ehea_plpar_hcall9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_phyp.c_ehea_plpar_hcall9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H_MEHEAPORT_CAT = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@H_AUTHORITY = common dso_local global i64 0, align 8
@H_MODIFY_HEA_PORT = common dso_local global i64 0, align 8
@H_PORT_CB4 = common dso_local global i64 0, align 8
@H_PORT_CB4_JUMBO = common dso_local global i64 0, align 8
@H_PORT_CB4_SPEED = common dso_local global i64 0, align 8
@H_PORT_CB7 = common dso_local global i64 0, align 8
@H_PORT_CB7_DUCQPN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [182 x i8] c"opcode=%lx ret=%lx arg1=%lx arg2=%lx arg3=%lx arg4=%lx arg5=%lx arg6=%lx arg7=%lx arg8=%lx arg9=%lx out1=%lx out2=%lx out3=%lx out4=%lx out5=%lx out6=%lx out7=%lx out8=%lx out9=%lx\0A\00", align 1
@H_BUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @ehea_plpar_hcall9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ehea_plpar_hcall9(i64 %0, i64* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10) #0 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store i64 %0, i64* %13, align 8
  store i64* %1, i64** %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store i64 %6, i64* %19, align 8
  store i64 %7, i64* %20, align 8
  store i64 %8, i64* %21, align 8
  store i64 %9, i64* %22, align 8
  store i64 %10, i64* %23, align 8
  store i32 0, i32* %25, align 4
  br label %28

28:                                               ; preds = %129, %11
  %29 = load i32, i32* %25, align 4
  %30 = icmp slt i32 %29, 5
  br i1 %30, label %31, label %132

31:                                               ; preds = %28
  %32 = load i64, i64* %13, align 8
  %33 = load i64*, i64** %14, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load i64, i64* %16, align 8
  %36 = load i64, i64* %17, align 8
  %37 = load i64, i64* %18, align 8
  %38 = load i64, i64* %19, align 8
  %39 = load i64, i64* %20, align 8
  %40 = load i64, i64* %21, align 8
  %41 = load i64, i64* %22, align 8
  %42 = load i64, i64* %23, align 8
  %43 = call i64 @plpar_hcall9(i64 %32, i64* %33, i64 %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40, i64 %41, i64 %42)
  store i64 %43, i64* %24, align 8
  %44 = load i64, i64* %24, align 8
  %45 = call i64 @H_IS_LONG_BUSY(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %31
  %48 = load i64, i64* %24, align 8
  %49 = call i32 @get_longbusy_msecs(i64 %48)
  store i32 %49, i32* %26, align 4
  %50 = load i32, i32* %26, align 4
  %51 = call i32 @msleep_interruptible(i32 %50)
  br label %129

52:                                               ; preds = %31
  %53 = load i32, i32* @H_MEHEAPORT_CAT, align 4
  %54 = load i64, i64* %16, align 8
  %55 = call i64 @EHEA_BMASK_GET(i32 %53, i64 %54)
  store i64 %55, i64* %27, align 8
  %56 = load i64, i64* %24, align 8
  %57 = load i64, i64* @H_SUCCESS, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %127

59:                                               ; preds = %52
  %60 = load i64, i64* %24, align 8
  %61 = load i64, i64* @H_AUTHORITY, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %59
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @H_MODIFY_HEA_PORT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %63
  %68 = load i64, i64* %27, align 8
  %69 = load i64, i64* @H_PORT_CB4, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i64, i64* %17, align 8
  %73 = load i64, i64* @H_PORT_CB4_JUMBO, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %127, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %17, align 8
  %77 = load i64, i64* @H_PORT_CB4_SPEED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %127, label %79

79:                                               ; preds = %75, %67
  %80 = load i64, i64* %27, align 8
  %81 = load i64, i64* @H_PORT_CB7, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* @H_PORT_CB7_DUCQPN, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %127, label %87

87:                                               ; preds = %83, %79, %63, %59
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* %24, align 8
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* %16, align 8
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %18, align 8
  %94 = load i64, i64* %19, align 8
  %95 = load i64, i64* %20, align 8
  %96 = load i64, i64* %21, align 8
  %97 = load i64, i64* %22, align 8
  %98 = load i64, i64* %23, align 8
  %99 = load i64*, i64** %14, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %14, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %14, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64*, i64** %14, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %14, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 4
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %14, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 5
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %14, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 6
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %14, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 7
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %14, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 8
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @pr_err(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str, i64 0, i64 0), i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %101, i64 %104, i64 %107, i64 %110, i64 %113, i64 %116, i64 %119, i64 %122, i64 %125)
  br label %127

127:                                              ; preds = %87, %83, %75, %71, %52
  %128 = load i64, i64* %24, align 8
  store i64 %128, i64* %12, align 8
  br label %134

129:                                              ; preds = %47
  %130 = load i32, i32* %25, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %25, align 4
  br label %28

132:                                              ; preds = %28
  %133 = load i64, i64* @H_BUSY, align 8
  store i64 %133, i64* %12, align 8
  br label %134

134:                                              ; preds = %132, %127
  %135 = load i64, i64* %12, align 8
  ret i64 %135
}

declare dso_local i64 @plpar_hcall9(i64, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @H_IS_LONG_BUSY(i64) #1

declare dso_local i32 @get_longbusy_msecs(i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @EHEA_BMASK_GET(i32, i64) #1

declare dso_local i32 @pr_err(i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
