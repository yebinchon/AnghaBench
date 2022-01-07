; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_deflate.c_z_decomp_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_deflate.c_z_decomp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_deflate_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@CILEN_DEFLATE = common dso_local global i32 0, align 4
@CI_DEFLATE = common dso_local global i8 0, align 1
@CI_DEFLATE_DRAFT = common dso_local global i8 0, align 1
@DEFLATE_METHOD_VAL = common dso_local global i64 0, align 8
@DEFLATE_CHK_SEQUENCE = common dso_local global i8 0, align 1
@DEFLATE_MIN_SIZE = common dso_local global i32 0, align 4
@DEFLATE_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @z_decomp_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @z_decomp_alloc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ppp_deflate_state*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @CILEN_DEFLATE, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %49, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @CI_DEFLATE, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @CI_DEFLATE_DRAFT, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %49, label %27

27:                                               ; preds = %19, %11
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i32, i32* @CILEN_DEFLATE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %49, label %34

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @DEFLATE_METHOD(i8 zeroext %37)
  %39 = load i64, i64* @DEFLATE_METHOD_VAL, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %34
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 3
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @DEFLATE_CHK_SEQUENCE, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41, %34, %27, %19, %2
  store i8* null, i8** %3, align 8
  br label %102

50:                                               ; preds = %41
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @DEFLATE_SIZE(i8 zeroext %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @DEFLATE_MIN_SIZE, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @DEFLATE_MAX_SIZE, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %50
  store i8* null, i8** %3, align 8
  br label %102

63:                                               ; preds = %58
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.ppp_deflate_state* @kzalloc(i32 24, i32 %64)
  store %struct.ppp_deflate_state* %65, %struct.ppp_deflate_state** %6, align 8
  %66 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %6, align 8
  %67 = icmp eq %struct.ppp_deflate_state* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i8* null, i8** %3, align 8
  br label %102

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %6, align 8
  %72 = getelementptr inbounds %struct.ppp_deflate_state, %struct.ppp_deflate_state* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %6, align 8
  %74 = getelementptr inbounds %struct.ppp_deflate_state, %struct.ppp_deflate_state* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  %76 = call i32 (...) @zlib_inflate_workspacesize()
  %77 = call i32* @vmalloc(i32 %76)
  %78 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %6, align 8
  %79 = getelementptr inbounds %struct.ppp_deflate_state, %struct.ppp_deflate_state* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32* %77, i32** %80, align 8
  %81 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %6, align 8
  %82 = getelementptr inbounds %struct.ppp_deflate_state, %struct.ppp_deflate_state* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %69
  br label %99

87:                                               ; preds = %69
  %88 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %6, align 8
  %89 = getelementptr inbounds %struct.ppp_deflate_state, %struct.ppp_deflate_state* %88, i32 0, i32 1
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 0, %90
  %92 = call i64 @zlib_inflateInit2(%struct.TYPE_2__* %89, i32 %91)
  %93 = load i64, i64* @Z_OK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %99

96:                                               ; preds = %87
  %97 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %6, align 8
  %98 = bitcast %struct.ppp_deflate_state* %97 to i8*
  store i8* %98, i8** %3, align 8
  br label %102

99:                                               ; preds = %95, %86
  %100 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %6, align 8
  %101 = call i32 @z_decomp_free(%struct.ppp_deflate_state* %100)
  store i8* null, i8** %3, align 8
  br label %102

102:                                              ; preds = %99, %96, %68, %62, %49
  %103 = load i8*, i8** %3, align 8
  ret i8* %103
}

declare dso_local i64 @DEFLATE_METHOD(i8 zeroext) #1

declare dso_local i32 @DEFLATE_SIZE(i8 zeroext) #1

declare dso_local %struct.ppp_deflate_state* @kzalloc(i32, i32) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @zlib_inflate_workspacesize(...) #1

declare dso_local i64 @zlib_inflateInit2(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @z_decomp_free(%struct.ppp_deflate_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
