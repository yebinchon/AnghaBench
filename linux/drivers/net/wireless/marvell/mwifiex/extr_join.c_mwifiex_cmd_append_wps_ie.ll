; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_cmd_append_wps_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_cmd_append_wps_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, %struct.mwifiex_ie_types_header*, i32 }
%struct.mwifiex_ie_types_header = type { i8*, i8* }

@CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cmd: append wps ie %d to %p\0A\00", align 1
@TLV_TYPE_PASSTHROUGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i32**)* @mwifiex_cmd_append_wps_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_append_wps_ie(%struct.mwifiex_private* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mwifiex_ie_types_header, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32**, i32*** %5, align 8
  %9 = icmp ne i32** %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32**, i32*** %5, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %78

15:                                               ; preds = %10
  %16 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %17 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %15
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %22 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CMD, align 4
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32**, i32*** %5, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @mwifiex_dbg(i32 %23, i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27, i32* %29)
  %31 = load i32, i32* @TLV_TYPE_PASSTHROUGH, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = getelementptr inbounds %struct.mwifiex_ie_types_header, %struct.mwifiex_ie_types_header* %7, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %35 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = getelementptr inbounds %struct.mwifiex_ie_types_header, %struct.mwifiex_ie_types_header* %7, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = load i32**, i32*** %5, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @memcpy(i32* %40, %struct.mwifiex_ie_types_header* %7, i32 16)
  %42 = load i32**, i32*** %5, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 16
  store i32* %44, i32** %42, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 16
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = load i32**, i32*** %5, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %52 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %51, i32 0, i32 1
  %53 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %52, align 8
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %55 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memcpy(i32* %50, %struct.mwifiex_ie_types_header* %53, i32 %56)
  %58 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %59 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32**, i32*** %5, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = sext i32 %60 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %61, align 8
  %65 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %66 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %20, %15
  %71 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %72 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %71, i32 0, i32 1
  %73 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %72, align 8
  %74 = call i32 @kfree(%struct.mwifiex_ie_types_header* %73)
  %75 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %76 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %70, %14
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mwifiex_ie_types_header*, i32) #1

declare dso_local i32 @kfree(%struct.mwifiex_ie_types_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
