; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_link_to_linux_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_link_to_linux_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EKEYREJECTED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@EBADSLT = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @link_to_linux_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_to_linux_err(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %2, align 4
  br label %71

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %68 [
    i32 136, label %10
    i32 138, label %10
    i32 155, label %11
    i32 154, label %14
    i32 128, label %14
    i32 158, label %14
    i32 160, label %17
    i32 147, label %17
    i32 146, label %17
    i32 159, label %20
    i32 131, label %20
    i32 137, label %20
    i32 157, label %23
    i32 142, label %23
    i32 156, label %26
    i32 152, label %29
    i32 140, label %29
    i32 151, label %32
    i32 149, label %35
    i32 129, label %35
    i32 143, label %35
    i32 150, label %35
    i32 145, label %38
    i32 144, label %41
    i32 141, label %44
    i32 133, label %47
    i32 132, label %50
    i32 130, label %53
    i32 153, label %56
    i32 134, label %59
    i32 135, label %59
    i32 148, label %62
    i32 139, label %65
  ]

10:                                               ; preds = %8, %8
  store i32 0, i32* %2, align 4
  br label %71

11:                                               ; preds = %8
  %12 = load i32, i32* @EKEYREJECTED, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %71

14:                                               ; preds = %8, %8, %8
  %15 = load i32, i32* @EACCES, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %71

17:                                               ; preds = %8, %8, %8
  %18 = load i32, i32* @ENETUNREACH, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %71

20:                                               ; preds = %8, %8, %8
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %71

23:                                               ; preds = %8, %8
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %71

26:                                               ; preds = %8
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %71

29:                                               ; preds = %8, %8
  %30 = load i32, i32* @EBADSLT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %71

32:                                               ; preds = %8
  %33 = load i32, i32* @EBADMSG, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %71

35:                                               ; preds = %8, %8, %8, %8
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %71

38:                                               ; preds = %8
  %39 = load i32, i32* @ENODATA, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %71

41:                                               ; preds = %8
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %71

44:                                               ; preds = %8
  %45 = load i32, i32* @EADDRINUSE, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %71

47:                                               ; preds = %8
  %48 = load i32, i32* @ETIME, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %71

50:                                               ; preds = %8
  %51 = load i32, i32* @ENOBUFS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %71

53:                                               ; preds = %8
  %54 = load i32, i32* @ENOKEY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %71

56:                                               ; preds = %8
  %57 = load i32, i32* @ENXIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %71

59:                                               ; preds = %8, %8
  %60 = load i32, i32* @EREMOTEIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %71

62:                                               ; preds = %8
  %63 = load i32, i32* @EDQUOT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %71

65:                                               ; preds = %8
  %66 = load i32, i32* @EROFS, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %71

68:                                               ; preds = %8
  %69 = load i32, i32* @EPROTO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %10, %6
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
