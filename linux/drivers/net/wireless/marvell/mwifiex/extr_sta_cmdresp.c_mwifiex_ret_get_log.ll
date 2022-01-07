; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_get_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_get_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_802_11_get_log }
%struct.host_cmd_ds_802_11_get_log = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_ds_get_stats = type { i8*, i8*, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, %struct.mwifiex_ds_get_stats*)* @mwifiex_ret_get_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ret_get_log(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, %struct.mwifiex_ds_get_stats* %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca %struct.mwifiex_ds_get_stats*, align 8
  %7 = alloca %struct.host_cmd_ds_802_11_get_log*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  store %struct.mwifiex_ds_get_stats* %2, %struct.mwifiex_ds_get_stats** %6, align 8
  %8 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.host_cmd_ds_802_11_get_log* %10, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %11 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %12 = icmp ne %struct.mwifiex_ds_get_stats* %11, null
  br i1 %12, label %13, label %138

13:                                               ; preds = %3
  %14 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %15 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %14, i32 0, i32 14
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @le32_to_cpu(i32 %16)
  %18 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %19 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %18, i32 0, i32 14
  store i8* %17, i8** %19, align 8
  %20 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %21 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @le32_to_cpu(i32 %22)
  %24 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %25 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %24, i32 0, i32 13
  store i8* %23, i8** %25, align 8
  %26 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %27 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @le32_to_cpu(i32 %28)
  %30 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %31 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %30, i32 0, i32 12
  store i8* %29, i8** %31, align 8
  %32 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %33 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @le32_to_cpu(i32 %34)
  %36 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %37 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %36, i32 0, i32 11
  store i8* %35, i8** %37, align 8
  %38 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %39 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @le32_to_cpu(i32 %40)
  %42 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %43 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %42, i32 0, i32 10
  store i8* %41, i8** %43, align 8
  %44 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %45 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @le32_to_cpu(i32 %46)
  %48 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %49 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %48, i32 0, i32 9
  store i8* %47, i8** %49, align 8
  %50 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %51 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @le32_to_cpu(i32 %52)
  %54 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %55 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %54, i32 0, i32 8
  store i8* %53, i8** %55, align 8
  %56 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %57 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @le32_to_cpu(i32 %58)
  %60 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %61 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %60, i32 0, i32 7
  store i8* %59, i8** %61, align 8
  %62 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %63 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @le32_to_cpu(i32 %64)
  %66 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %67 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  %68 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %69 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @le32_to_cpu(i32 %70)
  %72 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %73 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %75 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @le32_to_cpu(i32 %76)
  %78 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %79 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %81 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @le32_to_cpu(i32 %82)
  %84 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %85 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %87 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @le32_to_cpu(i32 %90)
  %92 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %93 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %92, i32 0, i32 2
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  store i8* %91, i8** %95, align 8
  %96 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %97 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le32_to_cpu(i32 %100)
  %102 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %103 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %102, i32 0, i32 2
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  store i8* %101, i8** %105, align 8
  %106 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %107 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @le32_to_cpu(i32 %110)
  %112 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %113 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %112, i32 0, i32 2
  %114 = load i8**, i8*** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 2
  store i8* %111, i8** %115, align 8
  %116 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %117 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @le32_to_cpu(i32 %120)
  %122 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %123 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %122, i32 0, i32 2
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 3
  store i8* %121, i8** %125, align 8
  %126 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %127 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @le32_to_cpu(i32 %128)
  %130 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %131 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load %struct.host_cmd_ds_802_11_get_log*, %struct.host_cmd_ds_802_11_get_log** %7, align 8
  %133 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, %struct.host_cmd_ds_802_11_get_log* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i8* @le32_to_cpu(i32 %134)
  %136 = load %struct.mwifiex_ds_get_stats*, %struct.mwifiex_ds_get_stats** %6, align 8
  %137 = getelementptr inbounds %struct.mwifiex_ds_get_stats, %struct.mwifiex_ds_get_stats* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %13, %3
  ret i32 0
}

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
