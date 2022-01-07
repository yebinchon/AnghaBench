; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_mppe.c_mppe_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_mppe.c_mppe_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_mppe_state = type { i8*, i8*, %struct.TYPE_2__*, %struct.ppp_mppe_state* }
%struct.TYPE_2__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@CILEN_MPPE = common dso_local global i32 0, align 4
@CI_MPPE = common dso_local global i8 0, align 1
@fips_enabled = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@MPPE_MAX_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @mppe_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mppe_alloc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ppp_mppe_state*, align 8
  %7 = alloca %struct.crypto_shash*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = load i32, i32* @CILEN_MPPE, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 %12, 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %33, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @CI_MPPE, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %15
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = load i32, i32* @CILEN_MPPE, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i64, i64* @fips_enabled, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %23, %15, %2
  br label %129

34:                                               ; preds = %30
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.ppp_mppe_state* @kzalloc(i32 32, i32 %35)
  store %struct.ppp_mppe_state* %36, %struct.ppp_mppe_state** %6, align 8
  %37 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %38 = icmp eq %struct.ppp_mppe_state* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %129

40:                                               ; preds = %34
  %41 = call %struct.crypto_shash* @crypto_alloc_shash(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_shash* %41, %struct.crypto_shash** %7, align 8
  %42 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %43 = call i64 @IS_ERR(%struct.crypto_shash* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %106

46:                                               ; preds = %40
  %47 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %48 = call i32 @crypto_shash_descsize(%struct.crypto_shash* %47)
  %49 = zext i32 %48 to i64
  %50 = add i64 8, %49
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kmalloc(i32 %51, i32 %52)
  %54 = bitcast i8* %53 to %struct.TYPE_2__*
  %55 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %56 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %55, i32 0, i32 2
  store %struct.TYPE_2__* %54, %struct.TYPE_2__** %56, align 8
  %57 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %58 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = icmp ne %struct.TYPE_2__* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %46
  %62 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %63 = call i32 @crypto_free_shash(%struct.crypto_shash* %62)
  br label %106

64:                                               ; preds = %46
  %65 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %66 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %67 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store %struct.crypto_shash* %65, %struct.crypto_shash** %69, align 8
  %70 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %71 = call i32 @crypto_shash_digestsize(%struct.crypto_shash* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @MPPE_MAX_KEY_LEN, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %106

76:                                               ; preds = %64
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @kmalloc(i32 %77, i32 %78)
  %80 = bitcast i8* %79 to %struct.ppp_mppe_state*
  %81 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %82 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %81, i32 0, i32 3
  store %struct.ppp_mppe_state* %80, %struct.ppp_mppe_state** %82, align 8
  %83 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %84 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %83, i32 0, i32 3
  %85 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %84, align 8
  %86 = icmp ne %struct.ppp_mppe_state* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %76
  br label %106

88:                                               ; preds = %76
  %89 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %90 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = load i32, i32* @CILEN_MPPE, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = call i32 @memcpy(i8* %91, i8* %95, i32 8)
  %97 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %98 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %101 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @memcpy(i8* %99, i8* %102, i32 8)
  %104 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %105 = bitcast %struct.ppp_mppe_state* %104 to i8*
  store i8* %105, i8** %3, align 8
  br label %130

106:                                              ; preds = %87, %75, %61, %45
  %107 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %108 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %107, i32 0, i32 3
  %109 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %108, align 8
  %110 = call i32 @kfree(%struct.ppp_mppe_state* %109)
  %111 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %112 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = icmp ne %struct.TYPE_2__* %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %106
  %116 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %117 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load %struct.crypto_shash*, %struct.crypto_shash** %119, align 8
  %121 = call i32 @crypto_free_shash(%struct.crypto_shash* %120)
  %122 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %123 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = call i32 @kzfree(%struct.TYPE_2__* %124)
  br label %126

126:                                              ; preds = %115, %106
  %127 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %6, align 8
  %128 = call i32 @kfree(%struct.ppp_mppe_state* %127)
  br label %129

129:                                              ; preds = %126, %39, %33
  store i8* null, i8** %3, align 8
  br label %130

130:                                              ; preds = %129, %88
  %131 = load i8*, i8** %3, align 8
  ret i8* %131
}

declare dso_local %struct.ppp_mppe_state* @kzalloc(i32, i32) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @crypto_shash_descsize(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_digestsize(%struct.crypto_shash*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.ppp_mppe_state*) #1

declare dso_local i32 @kzfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
