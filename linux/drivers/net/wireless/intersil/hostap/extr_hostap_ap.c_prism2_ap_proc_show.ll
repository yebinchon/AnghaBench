; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_prism2_ap_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_prism2_ap_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.sta_info = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"# BSSID CHAN SIGNAL NOISE RATE SSID FLAGS\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%pM %d %d %d %d '\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"<%02x>\00", align 1
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c" [ESS]\00", align 1
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c" [IBSS]\00", align 1
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c" [WEP]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @prism2_ap_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ap_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sta_info*
  store %struct.sta_info* %9, %struct.sta_info** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %12 = icmp eq i8* %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %136

16:                                               ; preds = %2
  %17 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %136

22:                                               ; preds = %16
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %25 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %31, i32 %34, i32 %37, i32 %40)
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %98, %22
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %45 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %43, %48
  br i1 %49, label %50, label %101

50:                                               ; preds = %42
  %51 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %52 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %59, 32
  br i1 %60, label %61, label %85

61:                                               ; preds = %50
  %62 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %63 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %70, 127
  br i1 %71, label %72, label %85

72:                                               ; preds = %61
  %73 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %74 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %75 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = trunc i32 %82 to i8
  %84 = call i32 @seq_putc(%struct.seq_file* %73, i8 signext %83)
  br label %97

85:                                               ; preds = %61, %50
  %86 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %87 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %88 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %85, %72
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %42

101:                                              ; preds = %42
  %102 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %103 = call i32 @seq_putc(%struct.seq_file* %102, i8 signext 39)
  %104 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %105 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %112 = call i32 @seq_puts(%struct.seq_file* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %101
  %114 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %115 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %122 = call i32 @seq_puts(%struct.seq_file* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %113
  %124 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %125 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %132 = call i32 @seq_puts(%struct.seq_file* %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %123
  %134 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %135 = call i32 @seq_putc(%struct.seq_file* %134, i8 signext 10)
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %133, %21, %13
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
