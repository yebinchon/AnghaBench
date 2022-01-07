; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_mdio.c_mdio_mii_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_mdio.c_mdio_mii_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_if_info = type { i32, i32, i32, i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)*, i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@MDIO_PRTAD_NONE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MDIO_SUPPORTS_C45 = common dso_local global i32 0, align 4
@MDIO_SUPPORTS_C22 = common dso_local global i32 0, align 4
@MDIO_DEVAD_NONE = common dso_local global i32 0, align 4
@MDIO_EMULATE_C22 = common dso_local global i32 0, align 4
@MDIO_DEVS_AN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_ADVERTISE = common dso_local global i32 0, align 4
@MDIO_AN_LPA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdio_mii_ioctl(%struct.mdio_if_info* %0, %struct.mii_ioctl_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mdio_if_info*, align 8
  %6 = alloca %struct.mii_ioctl_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mdio_if_info* %0, %struct.mdio_if_info** %5, align 8
  store %struct.mii_ioctl_data* %1, %struct.mii_ioctl_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %13 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %32 [
    i32 130, label %16
    i32 129, label %31
    i32 128, label %31
  ]

16:                                               ; preds = %3
  %17 = load %struct.mdio_if_info*, %struct.mdio_if_info** %5, align 8
  %18 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MDIO_PRTAD_NONE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %171

25:                                               ; preds = %16
  %26 = load %struct.mdio_if_info*, %struct.mdio_if_info** %5, align 8
  %27 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %30 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  store i32 129, i32* %7, align 4
  br label %35

31:                                               ; preds = %3, %3
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %171

35:                                               ; preds = %31, %25
  %36 = load %struct.mdio_if_info*, %struct.mdio_if_info** %5, align 8
  %37 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MDIO_SUPPORTS_C45, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %44 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @mdio_phy_id_is_c45(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %50 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mdio_phy_id_prtad(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %54 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mdio_phy_id_devad(i32 %55)
  store i32 %56, i32* %9, align 4
  br label %135

57:                                               ; preds = %42, %35
  %58 = load %struct.mdio_if_info*, %struct.mdio_if_info** %5, align 8
  %59 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MDIO_SUPPORTS_C22, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %66 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 32
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %71 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, 31
  store i32 %75, i32* %10, align 4
  br label %134

76:                                               ; preds = %64, %57
  %77 = load %struct.mdio_if_info*, %struct.mdio_if_info** %5, align 8
  %78 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MDIO_EMULATE_C22, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %130

83:                                               ; preds = %76
  %84 = load %struct.mdio_if_info*, %struct.mdio_if_info** %5, align 8
  %85 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MDIO_PRTAD_NONE, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %130

89:                                               ; preds = %83
  %90 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %91 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mdio_if_info*, %struct.mdio_if_info** %5, align 8
  %94 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %130

97:                                               ; preds = %89
  %98 = load %struct.mdio_if_info*, %struct.mdio_if_info** %5, align 8
  %99 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %10, align 4
  switch i32 %101, label %126 [
    i32 135, label %102
    i32 134, label %102
    i32 132, label %102
    i32 131, label %102
    i32 136, label %107
    i32 133, label %107
  ]

102:                                              ; preds = %97, %97, %97, %97
  %103 = load %struct.mdio_if_info*, %struct.mdio_if_info** %5, align 8
  %104 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @__ffs(i32 %105)
  store i32 %106, i32* %9, align 4
  br label %129

107:                                              ; preds = %97, %97
  %108 = load %struct.mdio_if_info*, %struct.mdio_if_info** %5, align 8
  %109 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MDIO_DEVS_AN, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %171

117:                                              ; preds = %107
  %118 = load i32, i32* @MDIO_MMD_AN, align 4
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp eq i32 %119, 136
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  store i32 %122, i32* %10, align 4
  br label %125

123:                                              ; preds = %117
  %124 = load i32, i32* @MDIO_AN_LPA, align 4
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %123, %121
  br label %129

126:                                              ; preds = %97
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %171

129:                                              ; preds = %125, %102
  br label %133

130:                                              ; preds = %89, %83, %76
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %171

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %133, %69
  br label %135

135:                                              ; preds = %134, %48
  %136 = load i32, i32* %7, align 4
  %137 = icmp eq i32 %136, 129
  br i1 %137, label %138, label %157

138:                                              ; preds = %135
  %139 = load %struct.mdio_if_info*, %struct.mdio_if_info** %5, align 8
  %140 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %139, i32 0, i32 3
  %141 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %140, align 8
  %142 = load %struct.mdio_if_info*, %struct.mdio_if_info** %5, align 8
  %143 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 %141(i32 %144, i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %138
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %4, align 4
  br label %171

153:                                              ; preds = %138
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %156 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 4
  store i32 0, i32* %4, align 4
  br label %171

157:                                              ; preds = %135
  %158 = load %struct.mdio_if_info*, %struct.mdio_if_info** %5, align 8
  %159 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %158, i32 0, i32 4
  %160 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %159, align 8
  %161 = load %struct.mdio_if_info*, %struct.mdio_if_info** %5, align 8
  %162 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %168 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 %160(i32 %163, i32 %164, i32 %165, i32 %166, i32 %169)
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %157, %153, %151, %130, %126, %114, %32, %22
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i64 @mdio_phy_id_is_c45(i32) #1

declare dso_local i32 @mdio_phy_id_prtad(i32) #1

declare dso_local i32 @mdio_phy_id_devad(i32) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
