; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_deflate.c_z_comp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_deflate.c_z_comp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_deflate_state = type { i64, i32, i32, i32, i64 }

@CILEN_DEFLATE = common dso_local global i32 0, align 4
@CI_DEFLATE = common dso_local global i8 0, align 1
@CI_DEFLATE_DRAFT = common dso_local global i8 0, align 1
@DEFLATE_METHOD_VAL = common dso_local global i64 0, align 8
@DEFLATE_CHK_SEQUENCE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32)* @z_comp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_comp_init(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ppp_deflate_state*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.ppp_deflate_state*
  store %struct.ppp_deflate_state* %16, %struct.ppp_deflate_state** %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @CILEN_DEFLATE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %67, label %20

20:                                               ; preds = %6
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @CI_DEFLATE, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @CI_DEFLATE_DRAFT, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %67, label %36

36:                                               ; preds = %28, %20
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i32, i32* @CILEN_DEFLATE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %67, label %43

43:                                               ; preds = %36
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @DEFLATE_METHOD(i8 zeroext %46)
  %48 = load i64, i64* @DEFLATE_METHOD_VAL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %67, label %50

50:                                               ; preds = %43
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @DEFLATE_SIZE(i8 zeroext %53)
  %55 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %14, align 8
  %56 = getelementptr inbounds %struct.ppp_deflate_state, %struct.ppp_deflate_state* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %50
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @DEFLATE_CHK_SEQUENCE, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59, %50, %43, %36, %28, %6
  store i32 0, i32* %7, align 4
  br label %80

68:                                               ; preds = %59
  %69 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %14, align 8
  %70 = getelementptr inbounds %struct.ppp_deflate_state, %struct.ppp_deflate_state* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %14, align 8
  %73 = getelementptr inbounds %struct.ppp_deflate_state, %struct.ppp_deflate_state* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %14, align 8
  %76 = getelementptr inbounds %struct.ppp_deflate_state, %struct.ppp_deflate_state* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ppp_deflate_state*, %struct.ppp_deflate_state** %14, align 8
  %78 = getelementptr inbounds %struct.ppp_deflate_state, %struct.ppp_deflate_state* %77, i32 0, i32 3
  %79 = call i32 @zlib_deflateReset(i32* %78)
  store i32 1, i32* %7, align 4
  br label %80

80:                                               ; preds = %68, %67
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i64 @DEFLATE_METHOD(i8 zeroext) #1

declare dso_local i64 @DEFLATE_SIZE(i8 zeroext) #1

declare dso_local i32 @zlib_deflateReset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
