; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_ppp.c_ppp_cp_parse_cr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_ppp.c_ppp_cp_parse_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ppp_cp_parse_cr.valid_accm = internal constant [6 x i32] [i32 130, i32 6, i32 0, i32 0, i32 0, i32 0], align 16
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PID_LCP = common dso_local global i64 0, align 8
@RCR_BAD = common dso_local global i32 0, align 4
@CP_CONF_REJ = common dso_local global i32 0, align 4
@CP_CONF_NAK = common dso_local global i32 0, align 4
@RCR_GOOD = common dso_local global i32 0, align 4
@CP_CONF_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64, i32, i32, i32*)* @ppp_cp_parse_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_cp_parse_cr(%struct.net_device* %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call i32* @kmalloc(i32 %17, i32 %18)
  store i32* %19, i32** %12, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %5
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %169

27:                                               ; preds = %5
  %28 = load i32*, i32** %10, align 8
  store i32* %28, i32** %11, align 8
  br label %29

29:                                               ; preds = %120, %27
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %132

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = icmp ult i32 %33, 2
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %13, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35, %32
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @kfree(i32* %47)
  br label %169

49:                                               ; preds = %35
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @PID_LCP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %105

53:                                               ; preds = %49
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %104 [
    i32 128, label %57
    i32 130, label %58
    i32 129, label %77
  ]

57:                                               ; preds = %53
  br label %120

58:                                               ; preds = %53
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @memcmp(i32* %59, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @ppp_cp_parse_cr.valid_accm, i64 0, i64 0), i32 24)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %120

63:                                               ; preds = %58
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %63
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* %14, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @memcpy(i32* %70, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @ppp_cp_parse_cr.valid_accm, i64 0, i64 0), i32 24)
  %72 = load i32, i32* %14, align 4
  %73 = zext i32 %72 to i64
  %74 = add i64 %73, 24
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %14, align 4
  br label %120

76:                                               ; preds = %63
  br label %104

77:                                               ; preds = %53
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 6
  br i1 %81, label %102, label %82

82:                                               ; preds = %77
  %83 = load i32*, i32** %11, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %82
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %87
  %93 = load i32*, i32** %11, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97, %77
  br label %104

103:                                              ; preds = %97, %92, %87, %82
  br label %120

104:                                              ; preds = %53, %102, %76
  br label %105

105:                                              ; preds = %104, %49
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %15, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32*, i32** %11, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @memcpy(i32* %109, i32* %110, i32 %113)
  %115 = load i32*, i32** %11, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %15, align 4
  %119 = add i32 %118, %117
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %105, %103, %66, %62, %57
  %121 = load i32*, i32** %11, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %13, align 4
  %125 = sub i32 %124, %123
  store i32 %125, i32* %13, align 4
  %126 = load i32*, i32** %11, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %11, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %11, align 8
  br label %29

132:                                              ; preds = %29
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load %struct.net_device*, %struct.net_device** %6, align 8
  %137 = load i64, i64* %7, align 8
  %138 = load i32, i32* @RCR_BAD, align 4
  %139 = load i32, i32* @CP_CONF_REJ, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32*, i32** %12, align 8
  %143 = call i32 @ppp_cp_event(%struct.net_device* %136, i64 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32* %142)
  br label %166

144:                                              ; preds = %132
  %145 = load i32, i32* %14, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = load %struct.net_device*, %struct.net_device** %6, align 8
  %149 = load i64, i64* %7, align 8
  %150 = load i32, i32* @RCR_BAD, align 4
  %151 = load i32, i32* @CP_CONF_NAK, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32*, i32** %12, align 8
  %155 = call i32 @ppp_cp_event(%struct.net_device* %148, i64 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32* %154)
  br label %165

156:                                              ; preds = %144
  %157 = load %struct.net_device*, %struct.net_device** %6, align 8
  %158 = load i64, i64* %7, align 8
  %159 = load i32, i32* @RCR_GOOD, align 4
  %160 = load i32, i32* @CP_CONF_ACK, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32*, i32** %10, align 8
  %164 = call i32 @ppp_cp_event(%struct.net_device* %157, i64 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32* %163)
  br label %165

165:                                              ; preds = %156, %147
  br label %166

166:                                              ; preds = %165, %135
  %167 = load i32*, i32** %12, align 8
  %168 = call i32 @kfree(i32* %167)
  br label %169

169:                                              ; preds = %166, %41, %21
  ret void
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ppp_cp_event(%struct.net_device*, i64, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
