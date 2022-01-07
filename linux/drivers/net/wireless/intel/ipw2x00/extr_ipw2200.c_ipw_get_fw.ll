; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_get_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_get_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.ipw_fw = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"%s request_firmware failed: Reason %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s is too small (%zd)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%s is too small or corrupt (%zd)\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Read firmware '%s' image v%d.%d (%zd bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, %struct.firmware**, i8*)* @ipw_get_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_get_fw(%struct.ipw_priv* %0, %struct.firmware** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipw_priv*, align 8
  %6 = alloca %struct.firmware**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ipw_fw*, align 8
  %9 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %5, align 8
  store %struct.firmware** %1, %struct.firmware*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.firmware**, %struct.firmware*** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %13 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @request_firmware(%struct.firmware** %10, i8* %11, i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21)
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %100

24:                                               ; preds = %3
  %25 = load %struct.firmware**, %struct.firmware*** %6, align 8
  %26 = load %struct.firmware*, %struct.firmware** %25, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 16
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.firmware**, %struct.firmware*** %6, align 8
  %34 = load %struct.firmware*, %struct.firmware** %33, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %100

40:                                               ; preds = %24
  %41 = load %struct.firmware**, %struct.firmware*** %6, align 8
  %42 = load %struct.firmware*, %struct.firmware** %41, align 8
  %43 = getelementptr inbounds %struct.firmware, %struct.firmware* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = bitcast i8* %45 to %struct.ipw_fw*
  store %struct.ipw_fw* %46, %struct.ipw_fw** %8, align 8
  %47 = load %struct.firmware**, %struct.firmware*** %6, align 8
  %48 = load %struct.firmware*, %struct.firmware** %47, align 8
  %49 = getelementptr inbounds %struct.firmware, %struct.firmware* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = load %struct.ipw_fw*, %struct.ipw_fw** %8, align 8
  %53 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = sext i32 %55 to i64
  %57 = add i64 16, %56
  %58 = load %struct.ipw_fw*, %struct.ipw_fw** %8, align 8
  %59 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = add i64 %57, %62
  %64 = load %struct.ipw_fw*, %struct.ipw_fw** %8, align 8
  %65 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  %68 = sext i32 %67 to i64
  %69 = add i64 %63, %68
  %70 = icmp ult i64 %51, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %40
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.firmware**, %struct.firmware*** %6, align 8
  %74 = load %struct.firmware*, %struct.firmware** %73, align 8
  %75 = getelementptr inbounds %struct.firmware, %struct.firmware* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %72, i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %100

80:                                               ; preds = %40
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.ipw_fw*, %struct.ipw_fw** %8, align 8
  %83 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32_to_cpu(i32 %84)
  %86 = ashr i32 %85, 16
  %87 = load %struct.ipw_fw*, %struct.ipw_fw** %8, align 8
  %88 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le32_to_cpu(i32 %89)
  %91 = and i32 %90, 255
  %92 = load %struct.firmware**, %struct.firmware*** %6, align 8
  %93 = load %struct.firmware*, %struct.firmware** %92, align 8
  %94 = getelementptr inbounds %struct.firmware, %struct.firmware* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = sub i64 %96, 16
  %98 = trunc i64 %97 to i32
  %99 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %81, i32 %86, i32 %91, i32 %98)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %80, %71, %31, %19
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @IPW_ERROR(i8*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
