; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_alloc_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_alloc_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"gcm(aes)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_aead* (i8*, i32, i32)* @macsec_alloc_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_aead* @macsec_alloc_tfm(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call %struct.crypto_aead* @crypto_alloc_aead(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_aead* %10, %struct.crypto_aead** %8, align 8
  %11 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %12 = call i64 @IS_ERR(%struct.crypto_aead* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  store %struct.crypto_aead* %15, %struct.crypto_aead** %4, align 8
  br label %38

16:                                               ; preds = %3
  %17 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @crypto_aead_setkey(%struct.crypto_aead* %17, i8* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %33

24:                                               ; preds = %16
  %25 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @crypto_aead_setauthsize(%struct.crypto_aead* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %33

31:                                               ; preds = %24
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  store %struct.crypto_aead* %32, %struct.crypto_aead** %4, align 8
  br label %38

33:                                               ; preds = %30, %23
  %34 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %35 = call i32 @crypto_free_aead(%struct.crypto_aead* %34)
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.crypto_aead* @ERR_PTR(i32 %36)
  store %struct.crypto_aead* %37, %struct.crypto_aead** %4, align 8
  br label %38

38:                                               ; preds = %33, %31, %14
  %39 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  ret %struct.crypto_aead* %39
}

declare dso_local %struct.crypto_aead* @crypto_alloc_aead(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_setkey(%struct.crypto_aead*, i8*, i32) #1

declare dso_local i32 @crypto_aead_setauthsize(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_free_aead(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_aead* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
