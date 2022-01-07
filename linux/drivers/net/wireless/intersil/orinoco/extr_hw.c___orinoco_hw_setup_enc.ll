; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hw.c___orinoco_hw_setup_enc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hw.c___orinoco_hw_setup_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { i64, i32, i32, i32, i64, i32, i64, %struct.hermes }
%struct.hermes = type { i32 }

@ORINOCO_ALG_WEP = common dso_local global i64 0, align 8
@HERMES_AUTH_SHARED_KEY = common dso_local global i32 0, align 4
@HERMES_AUTH_OPEN = common dso_local global i32 0, align 4
@USER_BAP = common dso_local global i32 0, align 4
@HERMES_RID_CNFAUTHENTICATION_AGERE = common dso_local global i32 0, align 4
@HERMES_RID_CNFWEPENABLED_AGERE = common dso_local global i32 0, align 4
@HERMES_RID_CNFSETWPAAUTHMGMTSUITE_AGERE = common dso_local global i32 0, align 4
@HERMES_WEP_PRIVACY_INVOKED = common dso_local global i32 0, align 4
@HERMES_WEP_EXCL_UNENCRYPTED = common dso_local global i32 0, align 4
@HERMES_RID_CNFAUTHENTICATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@HERMES_WEP_HOST_DECRYPT = common dso_local global i32 0, align 4
@HERMES_RID_CNFWEPFLAGS_INTERSIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__orinoco_hw_setup_enc(%struct.orinoco_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.orinoco_private*, align 8
  %4 = alloca %struct.hermes*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.orinoco_private* %0, %struct.orinoco_private** %3, align 8
  %9 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %10 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %9, i32 0, i32 7
  store %struct.hermes* %10, %struct.hermes** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %12 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ORINOCO_ALG_WEP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %18 = call i32 @__orinoco_hw_setup_wepkeys(%struct.orinoco_private* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %21 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @HERMES_AUTH_SHARED_KEY, align 4
  store i32 %25, i32* %7, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @HERMES_AUTH_OPEN, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %30 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 2, i32* %8, align 4
  br label %43

34:                                               ; preds = %28
  %35 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %36 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ORINOCO_ALG_WEP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %8, align 4
  br label %42

41:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %33
  %44 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %45 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %143 [
    i32 130, label %47
    i32 129, label %88
    i32 128, label %88
  ]

47:                                               ; preds = %43
  %48 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %49 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ORINOCO_ALG_WEP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.hermes*, %struct.hermes** %4, align 8
  %55 = load i32, i32* @USER_BAP, align 4
  %56 = load i32, i32* @HERMES_RID_CNFAUTHENTICATION_AGERE, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @hermes_write_wordrec(%struct.hermes* %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.hermes*, %struct.hermes** %4, align 8
  %61 = load i32, i32* @USER_BAP, align 4
  %62 = load i32, i32* @HERMES_RID_CNFWEPENABLED_AGERE, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @hermes_write_wordrec(%struct.hermes* %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %144

69:                                               ; preds = %59
  %70 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %71 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.hermes*, %struct.hermes** %4, align 8
  %76 = load i32, i32* @USER_BAP, align 4
  %77 = load i32, i32* @HERMES_RID_CNFSETWPAAUTHMGMTSUITE_AGERE, align 4
  %78 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %79 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @hermes_write_wordrec(%struct.hermes* %75, i32 %76, i32 %77, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %144

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %69
  br label %143

88:                                               ; preds = %43, %43
  %89 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %90 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ORINOCO_ALG_WEP, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %88
  %95 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %96 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %101 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 128
  br i1 %103, label %104, label %108

104:                                              ; preds = %99, %94
  %105 = load i32, i32* @HERMES_WEP_PRIVACY_INVOKED, align 4
  %106 = load i32, i32* @HERMES_WEP_EXCL_UNENCRYPTED, align 4
  %107 = or i32 %105, %106
  store i32 %107, i32* %6, align 4
  br label %110

108:                                              ; preds = %99
  %109 = load i32, i32* @HERMES_WEP_PRIVACY_INVOKED, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %108, %104
  %111 = load %struct.hermes*, %struct.hermes** %4, align 8
  %112 = load i32, i32* @USER_BAP, align 4
  %113 = load i32, i32* @HERMES_RID_CNFAUTHENTICATION, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @hermes_write_wordrec(%struct.hermes* %111, i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %144

120:                                              ; preds = %110
  br label %122

121:                                              ; preds = %88
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %121, %120
  %123 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %124 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i32, i32* @HERMES_WEP_HOST_DECRYPT, align 4
  %130 = load i32, i32* %6, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %128, %122
  %133 = load %struct.hermes*, %struct.hermes** %4, align 8
  %134 = load i32, i32* @USER_BAP, align 4
  %135 = load i32, i32* @HERMES_RID_CNFWEPFLAGS_INTERSIL, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @hermes_write_wordrec(%struct.hermes* %133, i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %2, align 4
  br label %144

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %43, %142, %87
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %140, %118, %84, %67
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @__orinoco_hw_setup_wepkeys(%struct.orinoco_private*) #1

declare dso_local i32 @hermes_write_wordrec(%struct.hermes*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
