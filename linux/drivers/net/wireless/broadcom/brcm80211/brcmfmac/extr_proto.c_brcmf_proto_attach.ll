; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_proto.c_brcmf_proto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_proto.c_brcmf_proto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { %struct.brcmf_proto*, %struct.TYPE_2__* }
%struct.brcmf_proto = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BRCMF_PROTO_BCDC = common dso_local global i64 0, align 8
@BRCMF_PROTO_MSGBUF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Unsupported proto type %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Not all proto handlers have been installed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_proto_attach(%struct.brcmf_pub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_pub*, align 8
  %4 = alloca %struct.brcmf_proto*, align 8
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %3, align 8
  %5 = load i32, i32* @TRACE, align 4
  %6 = call i32 @brcmf_dbg(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.brcmf_proto* @kzalloc(i32 64, i32 %7)
  store %struct.brcmf_proto* %8, %struct.brcmf_proto** %4, align 8
  %9 = load %struct.brcmf_proto*, %struct.brcmf_proto** %4, align 8
  %10 = icmp ne %struct.brcmf_proto* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %96

12:                                               ; preds = %1
  %13 = load %struct.brcmf_proto*, %struct.brcmf_proto** %4, align 8
  %14 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %15 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %14, i32 0, i32 0
  store %struct.brcmf_proto* %13, %struct.brcmf_proto** %15, align 8
  %16 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %17 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BRCMF_PROTO_BCDC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %12
  %24 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %25 = call i64 @brcmf_proto_bcdc_attach(%struct.brcmf_pub* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %96

28:                                               ; preds = %23
  br label %52

29:                                               ; preds = %12
  %30 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %31 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BRCMF_PROTO_MSGBUF, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %39 = call i64 @brcmf_proto_msgbuf_attach(%struct.brcmf_pub* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %96

42:                                               ; preds = %37
  br label %51

43:                                               ; preds = %29
  %44 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %45 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %46 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  br label %96

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %28
  %53 = load %struct.brcmf_proto*, %struct.brcmf_proto** %4, align 8
  %54 = getelementptr inbounds %struct.brcmf_proto, %struct.brcmf_proto* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %92

57:                                               ; preds = %52
  %58 = load %struct.brcmf_proto*, %struct.brcmf_proto** %4, align 8
  %59 = getelementptr inbounds %struct.brcmf_proto, %struct.brcmf_proto* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %92, label %62

62:                                               ; preds = %57
  %63 = load %struct.brcmf_proto*, %struct.brcmf_proto** %4, align 8
  %64 = getelementptr inbounds %struct.brcmf_proto, %struct.brcmf_proto* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %92, label %67

67:                                               ; preds = %62
  %68 = load %struct.brcmf_proto*, %struct.brcmf_proto** %4, align 8
  %69 = getelementptr inbounds %struct.brcmf_proto, %struct.brcmf_proto* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %92, label %72

72:                                               ; preds = %67
  %73 = load %struct.brcmf_proto*, %struct.brcmf_proto** %4, align 8
  %74 = getelementptr inbounds %struct.brcmf_proto, %struct.brcmf_proto* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %92, label %77

77:                                               ; preds = %72
  %78 = load %struct.brcmf_proto*, %struct.brcmf_proto** %4, align 8
  %79 = getelementptr inbounds %struct.brcmf_proto, %struct.brcmf_proto* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %92, label %82

82:                                               ; preds = %77
  %83 = load %struct.brcmf_proto*, %struct.brcmf_proto** %4, align 8
  %84 = getelementptr inbounds %struct.brcmf_proto, %struct.brcmf_proto* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load %struct.brcmf_proto*, %struct.brcmf_proto** %4, align 8
  %89 = getelementptr inbounds %struct.brcmf_proto, %struct.brcmf_proto* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %87, %82, %77, %72, %67, %62, %57, %52
  %93 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %94 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %93, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %96

95:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %103

96:                                               ; preds = %92, %43, %41, %27, %11
  %97 = load %struct.brcmf_proto*, %struct.brcmf_proto** %4, align 8
  %98 = call i32 @kfree(%struct.brcmf_proto* %97)
  %99 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %100 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %99, i32 0, i32 0
  store %struct.brcmf_proto* null, %struct.brcmf_proto** %100, align 8
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %96, %95
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local %struct.brcmf_proto* @kzalloc(i32, i32) #1

declare dso_local i64 @brcmf_proto_bcdc_attach(%struct.brcmf_pub*) #1

declare dso_local i64 @brcmf_proto_msgbuf_attach(%struct.brcmf_pub*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #1

declare dso_local i32 @kfree(%struct.brcmf_proto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
