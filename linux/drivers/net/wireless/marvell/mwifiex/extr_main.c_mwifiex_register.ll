; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mwifiex_if_ops = type { i32 }
%struct.mwifiex_adapter = type { i32, %struct.mwifiex_adapter**, i32, %struct.mwifiex_adapter*, %struct.TYPE_2__, i32, i8*, %struct.device* }
%struct.TYPE_2__ = type { i64 (%struct.mwifiex_adapter.0*)* }
%struct.mwifiex_adapter.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@debug_mask = common dso_local global i32 0, align 4
@MWIFIEX_MAX_BSS_NUM = common dso_local global i32 0, align 4
@mwifiex_cmd_timeout_func = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"info: leave mwifiex_register with error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.device*, %struct.mwifiex_if_ops*, i8**)* @mwifiex_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_register(i8* %0, %struct.device* %1, %struct.mwifiex_if_ops* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.mwifiex_if_ops*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.mwifiex_adapter*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store %struct.mwifiex_if_ops* %2, %struct.mwifiex_if_ops** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 64, i32 %12)
  %14 = bitcast i8* %13 to %struct.mwifiex_adapter*
  store %struct.mwifiex_adapter* %14, %struct.mwifiex_adapter** %10, align 8
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %16 = icmp ne %struct.mwifiex_adapter* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %128

20:                                               ; preds = %4
  %21 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %22 = bitcast %struct.mwifiex_adapter* %21 to i8*
  %23 = load i8**, i8*** %9, align 8
  store i8* %22, i8** %23, align 8
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %26 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %25, i32 0, i32 7
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %29 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %31 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %30, i32 0, i32 4
  %32 = load %struct.mwifiex_if_ops*, %struct.mwifiex_if_ops** %8, align 8
  %33 = call i32 @memmove(%struct.TYPE_2__* %31, %struct.mwifiex_if_ops* %32, i32 4)
  %34 = load i32, i32* @debug_mask, align 4
  %35 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %36 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %38 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64 (%struct.mwifiex_adapter.0*)*, i64 (%struct.mwifiex_adapter.0*)** %39, align 8
  %41 = icmp ne i64 (%struct.mwifiex_adapter.0*)* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %20
  %43 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %44 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64 (%struct.mwifiex_adapter.0*)*, i64 (%struct.mwifiex_adapter.0*)** %45, align 8
  %47 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %48 = bitcast %struct.mwifiex_adapter* %47 to %struct.mwifiex_adapter.0*
  %49 = call i64 %46(%struct.mwifiex_adapter.0* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %103

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %20
  %54 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %55 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %93, %53
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @MWIFIEX_MAX_BSS_NUM, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %96

60:                                               ; preds = %56
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kzalloc(i32 4, i32 %61)
  %63 = bitcast i8* %62 to %struct.mwifiex_adapter*
  %64 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %65 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %64, i32 0, i32 1
  %66 = load %struct.mwifiex_adapter**, %struct.mwifiex_adapter*** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %66, i64 %68
  store %struct.mwifiex_adapter* %63, %struct.mwifiex_adapter** %69, align 8
  %70 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %71 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %70, i32 0, i32 1
  %72 = load %struct.mwifiex_adapter**, %struct.mwifiex_adapter*** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %72, i64 %74
  %76 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %75, align 8
  %77 = icmp ne %struct.mwifiex_adapter* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %60
  br label %103

79:                                               ; preds = %60
  %80 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %81 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %82 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %81, i32 0, i32 1
  %83 = load %struct.mwifiex_adapter**, %struct.mwifiex_adapter*** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %83, i64 %85
  %87 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %86, align 8
  %88 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %87, i32 0, i32 3
  store %struct.mwifiex_adapter* %80, %struct.mwifiex_adapter** %88, align 8
  %89 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %90 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %79
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %56

96:                                               ; preds = %56
  %97 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %98 = call i32 @mwifiex_init_lock_list(%struct.mwifiex_adapter* %97)
  %99 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %100 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %99, i32 0, i32 2
  %101 = load i32, i32* @mwifiex_cmd_timeout_func, align 4
  %102 = call i32 @timer_setup(i32* %100, i32 %101, i32 0)
  store i32 0, i32* %5, align 4
  br label %128

103:                                              ; preds = %78, %51
  %104 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %105 = load i32, i32* @ERROR, align 4
  %106 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %104, i32 %105, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %107

107:                                              ; preds = %122, %103
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %110 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %107
  %114 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %115 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %114, i32 0, i32 1
  %116 = load %struct.mwifiex_adapter**, %struct.mwifiex_adapter*** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %116, i64 %118
  %120 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %119, align 8
  %121 = call i32 @kfree(%struct.mwifiex_adapter* %120)
  br label %122

122:                                              ; preds = %113
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %107

125:                                              ; preds = %107
  %126 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %127 = call i32 @kfree(%struct.mwifiex_adapter* %126)
  store i32 -1, i32* %5, align 4
  br label %128

128:                                              ; preds = %125, %96, %17
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memmove(%struct.TYPE_2__*, %struct.mwifiex_if_ops*, i32) #1

declare dso_local i32 @mwifiex_init_lock_list(%struct.mwifiex_adapter*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @kfree(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
