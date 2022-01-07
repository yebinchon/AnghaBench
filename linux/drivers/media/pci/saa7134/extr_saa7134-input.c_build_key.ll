; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-input.c_build_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-input.c_build_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, %struct.saa7134_card_ir* }
%struct.saa7134_card_ir = type { i32, i32, i32, i32, i32, i64 }

@SAA7134_GPIO_GPSTATUS1 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPMODE3 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPRESCAN = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"build_key gpio=0x%x mask=0x%x data=%d\0A\00", align 1
@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*)* @build_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_key(%struct.saa7134_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca %struct.saa7134_card_ir*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  %7 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %8 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %7, i32 0, i32 1
  %9 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %8, align 8
  store %struct.saa7134_card_ir* %9, %struct.saa7134_card_ir** %4, align 8
  %10 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %11 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %18 [
    i32 129, label %13
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @SAA7134_GPIO_GPSTATUS1, align 4
  %15 = call i32 @saa_setb(i32 %14, i32 128)
  %16 = load i32, i32* @SAA7134_GPIO_GPSTATUS1, align 4
  %17 = call i32 @saa_clearb(i32 %16, i32 128)
  br label %18

18:                                               ; preds = %1, %13
  %19 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %20 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %21 = call i32 @saa_clearb(i32 %19, i32 %20)
  %22 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %23 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %24 = call i32 @saa_setb(i32 %22, i32 %23)
  %25 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %26 = ashr i32 %25, 2
  %27 = call i32 @saa_readl(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %29 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %18
  %33 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %34 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %156

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %42 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %18
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %46 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ir_extract_bits(i32 %44, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %51 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @input_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %53)
  %55 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %56 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %77 [
    i32 128, label %58
  ]

58:                                               ; preds = %43
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %61 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %66 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @rc_keyup(i32 %67)
  br label %76

69:                                               ; preds = %58
  %70 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %71 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @rc_keydown_notimeout(i32 %72, i32 %73, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %69, %64
  store i32 0, i32* %2, align 4
  br label %156

77:                                               ; preds = %43
  %78 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %79 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %119

82:                                               ; preds = %77
  %83 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %84 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %90 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %88, %91
  %93 = icmp ne i32 0, %92
  br i1 %93, label %106, label %94

94:                                               ; preds = %87, %82
  %95 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %96 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %94
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %102 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %100, %103
  %105 = icmp eq i32 0, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %99, %87
  %107 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %108 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @rc_keydown_notimeout(i32 %109, i32 %110, i32 %111, i32 0)
  br label %118

113:                                              ; preds = %99, %94
  %114 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %115 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @rc_keyup(i32 %116)
  br label %118

118:                                              ; preds = %113, %106
  br label %155

119:                                              ; preds = %77
  %120 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %121 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %127 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %125, %128
  %130 = icmp ne i32 0, %129
  br i1 %130, label %143, label %131

131:                                              ; preds = %124, %119
  %132 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %133 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %131
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %139 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %137, %140
  %142 = icmp eq i32 0, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %136, %124
  %144 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %145 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @rc_keydown_notimeout(i32 %146, i32 %147, i32 %148, i32 0)
  %150 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %151 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @rc_keyup(i32 %152)
  br label %154

154:                                              ; preds = %143, %136, %131
  br label %155

155:                                              ; preds = %154, %118
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %155, %76, %38
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @saa_setb(i32, i32) #1

declare dso_local i32 @saa_clearb(i32, i32) #1

declare dso_local i32 @saa_readl(i32) #1

declare dso_local i32 @ir_extract_bits(i32, i32) #1

declare dso_local i32 @input_dbg(i8*, i32, i32, i32) #1

declare dso_local i32 @rc_keyup(i32) #1

declare dso_local i32 @rc_keydown_notimeout(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
